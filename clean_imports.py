#!/usr/bin/env python3
import os
import re
import sys

def clean_imports(file_path):
    """Remove easy_localization imports and clean up imports."""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        print(f"Error reading {file_path}: {e}")
        return False

    original_content = content
    
    # Remove easy_localization imports
    content = re.sub(r"import\s+['\"]package:easy_localization/easy_localization\.dart['\"]\s*;\n", "", content)
    content = re.sub(r"import\s+['\"]package:easy_localization/.*['\"]\s*;\n", "", content)
    
    # Clean up multiple newlines
    content = re.sub(r'\n\s*\n\s*\n', '\n\n', content)
    
    if content != original_content:
        try:
            with open(file_path, 'w', encoding='utf-8') as f:
                f.write(content)
            print(f"Cleaned imports: {file_path}")
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
                if clean_imports(file_path):
                    updated_count += 1
    
    print(f"\nCleaned {updated_count} files")

if __name__ == '__main__':
    main()
