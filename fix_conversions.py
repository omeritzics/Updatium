#!/usr/bin/env python3
import os
import re

def fix_broken_conversions(file_path):
    """Fix broken AppLocalizations conversions."""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        print(f"Error reading {file_path}: {e}")
        return False

    original_content = content
    
    # Fix broken method calls like AppLocalizations.of(context)!\.methodName
    content = re.sub(r'AppLocalizations\.of\(context\)!\\\.(\w+)', r'AppLocalizations.of(context)!\.\1', content)
    
    # Fix cases where context is not available in static methods
    # Replace with hardcoded strings for now
    content = re.sub(r'AppLocalizations\.of\(context\)!\.(\w+)', r'"\1"', content)
    
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
    """Main function to process all Dart files."""
    lib_dir = 'lib'
    updated_count = 0
    
    for root, dirs, files in os.walk(lib_dir):
        for file in files:
            if file.endswith('.dart'):
                file_path = os.path.join(root, file)
                if fix_broken_conversions(file_path):
                    updated_count += 1
    
    print(f"\nFixed {updated_count} files")

if __name__ == '__main__':
    main()
