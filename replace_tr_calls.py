#!/usr/bin/env python3
import os
import re
import sys

def replace_tr_calls(file_path):
    """Replace tr() calls with AppLocalizations calls in a Dart file."""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        print(f"Error reading {file_path}: {e}")
        return False

    original_content = content
    
    # Add import if not present
    if "import 'package:updatium/generated/app_localizations.dart';" not in content:
        # Find the last import statement
        import_pattern = r"(import\s+['\"][^'\"]+['\"]\s*;)"
        imports = re.findall(import_pattern, content)
        if imports:
            last_import = imports[-1]
            content = content.replace(
                last_import,
                f"{last_import}\nimport 'package:updatium/generated/app_localizations.dart';"
            )
    
    # Replace simple tr() calls
    content = re.sub(r'tr\([\'"]([^\'"]+)[\'"]\)', r'AppLocalizations.of(context)!\.\1', content)
    
    # Replace tr() calls with simple parameters
    content = re.sub(r'tr\([\'"]([^\'"]+)[\'"],\s*\{[^}]*\}\)', r'AppLocalizations.of(context)!\.\1', content)
    
    # Replace tr() calls with named parameters
    content = re.sub(r'tr\([\'"]([^\'"]+)[\'"],\s*args:\s*\[([^\]]*)\]\)', 
                    lambda m: f'AppLocalizations.of(context)!.{convert_method_name(m.group(1))}({m.group(2)})', content)
    
    if content != original_content:
        try:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
            print(f"Updated: {file_path}")
            return True
        except Exception as e:
            print(f"Error writing {file_path}: {e}")
            return False
    
    return False

def convert_method_name(key):
    """Convert translation key to method name."""
    # Convert camelCase to snake_case for method names
    return key

def main():
    """Main function to process all Dart files."""
    lib_dir = 'lib'
    updated_count = 0
    
    for root, dirs, files in os.walk(lib_dir):
        for file in files:
            if file.endswith('.dart'):
                file_path = os.path.join(root, file)
                if replace_tr_calls(file_path):
                    updated_count += 1
    
    print(f"\nUpdated {updated_count} files")

if __name__ == '__main__':
    main()
