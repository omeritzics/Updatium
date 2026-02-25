#!/usr/bin/env python3
import os
import re

def remove_unused_imports(file_path):
    """Remove unused AppLocalizations imports."""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        print(f"Error reading {file_path}: {e}")
        return False

    original_content = content
    
    # Remove AppLocalizations import if not used
    if "AppLocalizations" not in content.replace("import 'package:updatium/generated/app_localizations.dart';", ""):
        content = re.sub(r"import\s+['\"]package:updatium/generated/app_localizations\.dart['\"]\s*;\n", "", content)
    
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
                if remove_unused_imports(file_path):
                    updated_count += 1
    
    print(f"\nCleaned {updated_count} files")

if __name__ == '__main__':
    main()
