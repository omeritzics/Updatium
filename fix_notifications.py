#!/usr/bin/env python3
import os
import re

def fix_notifications_provider(file_path):
    """Fix broken AppLocalizations calls in notifications_provider.dart."""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()
    except Exception as e:
        print(f"Error reading {file_path}: {e}")
        return False

    original_content = content
    
    # Fix constructor calls with hardcoded strings
    content = re.sub(
        r'AppLocalizations\.of\(context\)!\\\.(\w+)',
        lambda m: f'"{m.group(1).replace(/([A-Z])/g, " $1").strip()}"',
        content
    )
    
    # Fix method calls
    content = re.sub(r'\.tr\(\)', '', content)
    
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
    """Fix notifications_provider.dart."""
    file_path = 'lib/providers/notifications_provider.dart'
    fix_notifications_provider(file_path)

if __name__ == '__main__':
    main()
