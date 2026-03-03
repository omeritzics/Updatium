#!/bin/bash

# Translation Management Script
# This script helps manage translations by detecting and adding missing keys

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$SCRIPT_DIR"

echo "🌐 Translation Management Script"
echo "================================"

# Function to show help
show_help() {
    echo "Usage: $0 [OPTIONS]"
    echo ""
    echo "Options:"
    echo "  -c, --check          Check for missing translation keys only"
    echo "  -u, --update         Update missing keys with English fallbacks"
    echo "  -t, --translate      Auto-translate missing keys (requires LIBRETRANSLATE_API_KEY)"
    echo "  -v, --validate       Validate JSON format and consistency"
    echo "  -r, --remove-unused  Detect and remove unused translation keys"
    echo "  -h, --help           Show this help message"
    echo ""
    echo "Examples:"
    echo "  $0 --check           # Check for missing keys"
    echo "  $0 --update          # Add missing keys with English fallbacks"
    echo "  $0 --translate       # Auto-translate missing keys"
    echo "  $0 --validate        # Validate all translation files"
    echo "  $0 --remove-unused   # Remove unused translation keys"
}

# Function to extract used translation keys from Dart files
extract_used_keys() {
    echo "🔍 Extracting translation keys from Dart files..."
    
    # Create a script to extract translation keys from Dart files
    cat > extract_keys.js << 'EOF'
    const fs = require('fs');
    const path = require('path');
    
    // Function to extract translation keys from a single file
    function extractKeysFromFile(filePath) {
      const content = fs.readFileSync(filePath, 'utf8');
      const keys = new Set();
      
      // Match patterns like:
      // - tr('key')
      // - tr('key', args: [...])
      // - AppLocalizations.of(context)!.key
      // - AppLocalizations.of(context)!.key(args: [...])
      // - tr('x', args: [plural('key', ...)])
      // - AppLocalizations.of(context)!.x(plural('key', ...))
      
      const patterns = [
        /tr\(\s*['"`]([^'"`]+)['"`]/g,
        /tr\(\s*['"`]([^'"`]+)['"`]\s*,/g,
        /AppLocalizations\.of\(context\)\!\.([a-zA-Z_][a-zA-Z0-9_]*)/g,
        /plural\(\s*['"`]([^'"`]+)['"`]/g,
        /AppLocalizations\.of\(context\)\!\.([a-zA-Z_][a-zA-Z0-9_]*)\s*\(/g,
      ];
      
      patterns.forEach(pattern => {
        let match;
        while ((match = pattern.exec(content)) !== null) {
          const key = match[1];
          if (key && !key.includes(' ') && key.length > 0) {
            keys.add(key);
          }
        }
      });
      
      return Array.from(keys);
    }
    
    // Function to recursively find all Dart files
    function findDartFiles(dir) {
      const files = [];
      
      function traverse(currentDir) {
        const items = fs.readdirSync(currentDir);
        
        for (const item of items) {
          const fullPath = path.join(currentDir, item);
          const stat = fs.statSync(fullPath);
          
          if (stat.isDirectory() && !item.startsWith('.') && item !== 'build') {
            traverse(fullPath);
          } else if (stat.isFile() && item.endsWith('.dart')) {
            files.push(fullPath);
          }
        }
      }
      
      traverse(dir);
      return files;
    }
    
    // Main execution
    const libDir = path.join(process.cwd(), '..', 'lib');
    const dartFiles = findDartFiles(libDir);
    
    console.log(`Found ${dartFiles.length} Dart files`);
    
    const allKeys = new Set();
    
    dartFiles.forEach(file => {
      const keys = extractKeysFromFile(file);
      keys.forEach(key => allKeys.add(key));
    });
    
    const sortedKeys = Array.from(allKeys).sort();
    
    // Save to file
    fs.writeFileSync('used_keys.txt', sortedKeys.join('\n'));
    
    console.log(`Extracted ${sortedKeys.length} unique translation keys`);
    console.log('Keys saved to used_keys.txt');
    
    // Output for shell script
    console.log(`used_keys=${sortedKeys.join(',')}`);
    console.log(`used_keys_count=${sortedKeys.length}`);
    EOF
    
    # Run the extraction script
    node extract_keys.js
    
    echo "🔍 Found $(cat used_keys.txt | wc -l) translation keys used in code"
}

# Function to check for unused keys
check_unused() {
    echo "🔍 Checking for unused translation keys..."
    
    # Extract used keys first
    extract_used_keys
    
    template_file="en.json"
    template_keys=$(jq -r 'keys[]' "$template_file" | sort)
    
    # Get used keys
    IFS=',' read -ra USED_KEYS <<< "$(grep 'used_keys=' extract_keys.js | cut -d'=' -f2)"
    
    unused_keys=0
    unused_list=""
    
    echo "Checking each template key against used keys..."
    
    for key in $template_keys; do
        if [[ ! " ${USED_KEYS[@]} " =~ " ${key} " ]]; then
            echo "❌ Unused key: $key"
            unused_keys=$((unused_keys + 1))
            unused_list="$unused_list $key"
        else
            echo "✅ Used key: $key"
        fi
    done
    
    if [ $unused_keys -gt 0 ]; then
        echo ""
        echo "⚠️ Found $unused_keys unused translation keys"
        echo "Unused keys:$unused_list"
        return 1
    else
        echo ""
        echo "✅ All translation keys are in use"
        return 0
    fi
}

# Function to remove unused keys
remove_unused() {
    echo "🗑️ Removing unused translation keys..."
    
    # Check for unused keys first
    if ! check_unused; then
        template_file="en.json"
        
        # Create backup
        cp "$template_file" "${template_file}.backup"
        
        # Get unused keys
        IFS=' ' read -ra UNUSED_KEYS <<< "$unused_list"
        
        echo "Removing ${#UNUSED_KEYS[@]} unused keys from all translation files..."
        
        for file in *.json; do
            if [ "$file" != "package.json" ] && [ "$file" != "used_keys.txt" ]; then
                echo "Processing $file..."
                
                # Create a new JSON without unused keys
                jq --arg keys "$(printf '%s\n' "${UNUSED_KEYS[@]}" | jq -R . | jq -s .)" '
                  reduce . as $in ($ARGS.positional[]; select($in | has($in)) | del($in[$in]))
                ' "$file" > "${file}.tmp"
                
                # Replace original file
                mv "${file}.tmp" "$file"
                
                echo "✅ Updated $file"
            fi
        done
        
        echo ""
        echo "🗑️ Unused keys have been removed"
        echo "📁 Backups created with .backup extension"
        echo ""
        echo "⚠️ Please test the app to ensure no functionality is broken"
        echo "   If any keys were removed in error, restore from the .backup files"
    else
        echo "✅ No unused keys to remove"
    fi
    
    # Clean up temporary files
    rm -f extract_keys.js used_keys.txt
}

# Function to check for missing keys
check_missing() {
    echo "🔍 Checking for missing translation keys..."
    
    template_file="en.json"
    other_files=$(ls *.json | grep -v "$template_file" | grep -v "package")
    
    missing_keys=0
    missing_files=""
    
    for file in $other_files; do
        echo "Checking $file..."
        
        # Get keys from template and current file
        template_keys=$(jq -r 'keys[]' "$template_file" | sort)
        current_keys=$(jq -r 'keys[]' "$file" | sort)
        
        # Find missing keys
        missing=$(comm -23 <(echo "$template_keys") <(echo "$current_keys"))
        
        if [ -n "$missing" ]; then
            echo "❌ Missing keys in $file:"
            echo "$missing"
            missing_keys=$((missing_keys + $(echo "$missing" | wc -l)))
            missing_files="$missing_files $file"
        else
            echo "✅ All keys present in $file"
        fi
    done
    
    if [ $missing_keys -gt 0 ]; then
        echo ""
        echo "⚠️ Found $missing_keys missing translation keys"
        echo "Files with missing keys:$missing_files"
        return 1
    else
        echo ""
        echo "✅ All translation files are up to date"
        return 0
    fi
}

# Function to update missing keys
update_missing() {
    echo "🔄 Adding missing translation keys..."
    
    # Install dependencies if needed
    if [ ! -d "node_modules" ]; then
        echo "Installing dependencies..."
        npm install
    fi
    
    # Run the standardization script
    node standardize.mjs
    
    echo "✅ Missing keys have been added with English fallbacks"
}

# Function to auto-translate
auto_translate() {
    echo "🤖 Auto-translating missing strings..."
    
    if [ -z "$LIBRETRANSLATE_API_KEY" ]; then
        echo "❌ LIBRETRANSLATE_API_KEY environment variable not set"
        echo "Set it with: export LIBRETRANSLATE_API_KEY=your_api_key"
        exit 1
    fi
    
    # Install dependencies if needed
    if [ ! -d "node_modules" ]; then
        echo "Installing dependencies..."
        npm install
    fi
    
    # First update missing keys
    update_missing
    
    echo "🌍 Translating missing strings..."
    
    # Run translation script
    node -e "
const fs = require('fs');
const translate = require('translate');

translate.engine = 'libre';
translate.key = process.env.LIBRETRANSLATE_API_KEY;
translate.from = 'en';
translate.url = 'https://libretranslate.de/translate';

const templateFile = 'en.json';
const templateTranslation = JSON.parse(fs.readFileSync(templateFile).toString());
const otherFiles = fs.readdirSync('.').filter(f => f.endsWith('.json') && f !== templateFile && !f.startsWith('package'));

const neverAutoTranslate = {
    steamMobile: ['*'],
    steamChat: ['*'],
    root: ['*'],
    updatiumExportHyphenatedLowercase: ['*'],
    theme: ['de'],
    appId: ['de'],
    app: ['de'],
    apps: ['de', 'gl'],
    placeholder: ['pl'],
    importExport: ['fr'],
    url: ['fr', 'ca', 'de', 'gl', 'pt', 'pt-BR'],
    vivoAppStore: ['*'],
    coolApk: ['*'],
    updatiumImport: ['nl'],
    appLogs: ['nl'],
    apk: ['vi', 'ar', 'ca', 'de', 'es', 'gl'],
    minute: ['fr'],
    pseudoVersion: ['da'],
    tencentAppStore: ['*']
};

const shouldSkipAutoTranslate = (key, lang) => {
  if (neverAutoTranslate[key] && (neverAutoTranslate[key].includes('*') || neverAutoTranslate[key].includes(lang))) {
    return true;
  }
  return false;
};

async function translateMissing() {
  for (const file of otherFiles) {
    const lang = file.replace('.json', '');
    const translation = JSON.parse(fs.readFileSync(file).toString());
    let modified = false;
    
    for (const [key, value] of Object.entries(templateTranslation)) {
      if (!translation[key] || translation[key] === value) {
        if (shouldSkipAutoTranslate(key, lang)) {
          console.log(\`Skipping auto-translation of '\${key}' for \${lang}\`);
          continue;
        }
        
        try {
          console.log(\`Translating '\${key}' to \${lang}\`);
          const translated = await translate(value, lang.slice(0, 2));
          translation[key] = translated;
          modified = true;
        } catch (error) {
          console.log(\`Failed to translate '\${key}' to \${lang}: \${error.message}\`);
        }
      }
    }
    
    if (modified) {
      fs.writeFileSync(file, JSON.stringify(translation, null, 4) + '\\n');
      console.log(\`Updated \${file}\`);
    }
  }
}

translateMissing().catch(console.error);
"
    
    echo "✅ Auto-translation completed"
}

# Function to validate translations
validate_translations() {
    echo "✅ Validating translation files..."
    
    # Check JSON format
    echo "Validating JSON format..."
    for file in *.json; do
        if [ "$file" != "package.json" ]; then
            if jq empty "$file" 2>/dev/null; then
                echo "✅ $file is valid JSON"
            else
                echo "❌ $file has invalid JSON format"
                jq . "$file" 2>&1 | head -10
                exit 1
            fi
        fi
    done
    
    # Check for duplicate keys
    echo "Checking for duplicate keys..."
    for file in *.json; do
        if [ "$file" != "package.json" ]; then
            duplicates=$(jq -r 'keys[]' "$file" | sort | uniq -d)
            if [ -n "$duplicates" ]; then
                echo "❌ Duplicate keys found in $file:"
                echo "$duplicates"
                exit 1
            else
                echo "✅ No duplicate keys in $file"
            fi
        fi
    done
    
    echo "✅ All validation checks passed"
}

# Parse command line arguments
case "${1:-}" in
    -h|--help)
        show_help
        exit 0
        ;;
    -c|--check)
        check_missing
        ;;
    -u|--update)
        update_missing
        ;;
    -t|--translate)
        auto_translate
        ;;
    -v|--validate)
        validate_translations
        ;;
    -r|--remove-unused)
        remove_unused
        ;;
    "")
        # Default behavior: check and update if needed
        if check_missing; then
            echo "✅ No action needed"
        else
            echo ""
            read -p "Do you want to add missing keys? (y/N): " -n 1 -r
            echo
            if [[ $REPLY =~ ^[Yy]$ ]]; then
                update_missing
            fi
        fi
        ;;
    *)
        echo "❌ Unknown option: $1"
        show_help
        exit 1
        ;;
esac
