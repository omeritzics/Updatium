# Translation Management System

This directory contains the internationalization (i18n) files and tools for managing translations in Updatium.

## 📁 File Structure

```
assets/translations/
├── README.md                    # This documentation
├── package.json                 # Node.js dependencies
├── standardize.mjs              # Standardization script
├── update-translations.sh       # Management script
├── en.json                      # English (template) translations
├── he.json                      # Hebrew translations
├── [lang].json                  # Other language translations
└── ...                          # Additional translation files
```

## 🚀 Automated Translation Management

### GitHub Actions Workflow

The project includes an automated GitHub Actions workflow (`.github/workflows/translations.yml`) that:

1. **Detects Missing Keys**: Automatically scans all translation files for missing keys compared to the English template
2. **Adds Missing Keys**: Automatically adds missing keys with English fallback translations
3. **Optional Auto-Translation**: Can auto-translate missing strings using LibreTranslate
4. **Creates Pull Requests**: Automatically creates PRs with translation updates
5. **Validates Format**: Ensures all JSON files are valid and consistent

### Triggers

The workflow runs automatically on:
- Push to `main` or `develop` branches (when translation files or Dart files change)
- Pull requests to `main` or `develop` branches
- Manual dispatch (with optional auto-translation)

## 🛠️ Local Management

### Quick Start

```bash
# Navigate to translations directory
cd assets/translations

# Install dependencies
npm install

# Check for missing keys
./update-translations.sh --check

# Add missing keys with English fallbacks
./update-translations.sh --update

# Auto-translate missing keys (requires LIBRETRANSLATE_API_KEY)
export LIBRETRANSLATE_API_KEY=your_api_key
./update-translations.sh --translate

# Validate all translation files
./update-translations.sh --validate
```

### Script Options

| Option | Description |
|--------|-------------|
| `-h, --help` | Show help message |
| `-c, --check` | Check for missing translation keys only |
| `-u, --update` | Update missing keys with English fallbacks |
| `-t, --translate` | Auto-translate missing keys |
| `-v, --validate` | Validate JSON format and consistency |

### Default Behavior

Running `./update-translations.sh` without arguments will:
1. Check for missing keys
2. If missing keys are found, prompt to add them
3. Add missing keys with English fallbacks if confirmed

## 🌐 Adding New Translations

### 1. Add Keys to English Template

First, add new keys to `en.json`:

```json
{
  "existingKey": "Existing translation",
  "newKey": "New translation string",
  "anotherNewKey": "Another new string with {} placeholder"
}
```

### 2. Update Other Languages

#### Option A: Automated (Recommended)
```bash
./update-translations.sh --update
```

#### Option B: Manual
```bash
node standardize.mjs
```

#### Option C: Auto-Translation
```bash
export LIBRETRANSLATE_API_KEY=your_api_key
./update-translations.sh --translate
```

### 3. Review and Refine

After running the update script:

1. **Review English fallbacks** in other language files
2. **Replace with proper translations** where needed
3. **Test the app** to ensure translations work correctly
4. **Commit the changes**

## 🔧 Advanced Configuration

### Auto-Translation Exclusions

Some keys are excluded from auto-translation in `standardize.mjs`:

```javascript
const neverAutoTranslate = {
    steamMobile: ['*'],           // Exclude all languages
    theme: ['de'],                // Exclude German only
    appId: ['de'],                // Exclude German only
    // ... more exclusions
};
```

### LibreTranslate Setup

For auto-translation, you can:

1. **Use the public service** (free, rate-limited):
   - URL: `https://libretranslate.de/translate`
   - No API key required for basic usage

2. **Set up your own instance** (recommended for production):
   ```bash
   docker run -ti --rm -p 5000:5000 libretranslate/libretranslate
   ```
   - Set `LIBRETRANSLATE_API_KEY` environment variable
   - Update the URL in scripts if using a custom instance

### GitHub Secrets

For auto-translation in GitHub Actions, add this secret:

- `LIBRETRANSLATE_API_KEY`: Your LibreTranslate API key (optional)

## 📋 Translation Guidelines

### Best Practices

1. **Use Descriptive Keys**: Use clear, descriptive key names
2. **Consistent Naming**: Follow existing naming conventions
3. **Placeholders**: Use `{}` for dynamic content (e.g., "Downloaded {} apps")
4. **Context**: Add comments for complex translations if needed
5. **Testing**: Always test translations in the app

### Key Naming Conventions

```json
{
  "simpleKey": "Simple translation",
  "keyWithPlaceholder": "Translation with {} placeholder",
  "camelCaseKey": "Camel case key",
  "snake_case_key": "Snake case key (avoid if possible)"
}
```

### Placeholder Usage

```json
{
  "downloadedXApps": "Downloaded {} apps",
  "errorInX": "Error in {}: {}",
  "xIsTrackOnly": "{} is track-only"
}
```

## 🔍 Validation

The system includes comprehensive validation:

### JSON Format Validation
- Ensures all files are valid JSON
- Checks for syntax errors
- Validates proper formatting

### Key Consistency Validation
- Ensures all files have the same keys as the English template
- Identifies extra keys in non-template files
- Reports missing keys

### Duplicate Key Detection
- Scans for duplicate keys within files
- Prevents overwriting issues

## 🚨 Troubleshooting

### Common Issues

1. **JSON Syntax Errors**:
   ```bash
   # Validate specific file
   jq empty filename.json
   
   # Fix formatting
   jq . filename.json > temp.json && mv temp.json filename.json
   ```

2. **Missing Dependencies**:
   ```bash
   npm install
   ```

3. **Permission Issues**:
   ```bash
   chmod +x update-translations.sh
   ```

4. **Auto-Translation Failures**:
   - Check API key validity
   - Verify network connectivity
   - Review LibreTranslate service status

### Debug Mode

For detailed debugging, modify the scripts to add more logging or run with increased verbosity:

```bash
# Run with debug output
DEBUG=1 ./update-translations.sh --check
```

## 📊 Statistics

To get translation statistics:

```bash
# Count keys in each file
for file in *.json; do
    if [ "$file" != "package.json" ]; then
        count=$(jq '. | keys | length' "$file")
        echo "$file: $count keys"
    fi
done

# Find missing translations
./update-translations.sh --check
```

## 🤝 Contributing

When contributing translations:

1. **Never modify `en.json` directly** in PRs unless adding new keys
2. **Test translations** in the app before submitting
3. **Use the automated tools** to maintain consistency
4. **Respect cultural context** when translating
5. **Ask for review** if unsure about translations

## 📞 Support

For translation-related issues:

1. Check this documentation first
2. Run validation: `./update-translations.sh --validate`
3. Check GitHub Actions logs for automated issues
4. Create an issue with details about the problem

---

**Remember**: The automated system is here to help, but human review is essential for quality translations! 🌍
