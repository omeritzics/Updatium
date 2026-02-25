#!/usr/bin/env python3
import os
import re

def fix_all_broken_app_localizations(file_path):
    """Fix all broken AppLocalizations calls with hardcoded strings."""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        print(f"Error reading {file_path}: {e}")
        return False

    original_content = content
    
    # Replace all broken AppLocalizations calls with hardcoded strings
    # Pattern: AppLocalizations.of(context)!\.methodName
    content = re.sub(
        r'AppLocalizations\.of\(context\)!\\\.(\w+)',
        lambda m: f'"{m.group(1).replace(/([A-Z])/g, \' \$1\').trim()}"',
        content
    )
    
    # Also handle the case without backslash
    content = re.sub(
        r'AppLocalizations\.of\(context\)!\.(\w+)',
        lambda m: f'"{m.group(1).replace(/([A-Z])/g, \' \$1\').trim()}"',
        content
    )
    
    if content != original_content:
        try:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
            print(f"Fixed: {file_path}")
            return True
        except Exception as e:
            print(f"Error writing {file_path}: {e}")
            return False
    
    return False

def main():
    """Main function to process source_provider.dart specifically."""
    file_path = 'lib/providers/source_provider.dart'
    if fix_all_broken_app_localizations(file_path):
        print(f"Fixed {file_path}")

if __name__ == '__main__':
    main()
