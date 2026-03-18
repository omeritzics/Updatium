#!/usr/bin/env python3
"""
Advanced Localization Updater for Updatium
This script updates missing localization keys and can optionally translate them
"""

import json
import re
import sys
import os
from datetime import datetime

# Language configurations
LANGUAGES = {
    'app_es.arb': {'name': 'Spanish', 'code': 'es'},
    'app_fr.arb': {'name': 'French', 'code': 'fr'},
    'app_de.arb': {'name': 'German', 'code': 'de'},
    'app_zh.arb': {'name': 'Chinese', 'code': 'zh'},
    'app_ja.arb': {'name': 'Japanese', 'code': 'ja'},
    'app_it.arb': {'name': 'Italian', 'code': 'it'},
    'app_pt.arb': {'name': 'Portuguese', 'code': 'pt'},
    'app_ko.arb': {'name': 'Korean', 'code': 'ko'},
    'app_ru.arb': {'name': 'Russian', 'code': 'ru'},
    'app_ar.arb': {'name': 'Arabic', 'code': 'ar'},
    'app_tr.arb': {'name': 'Turkish', 'code': 'tr'},
    'app_he.arb': {'name': 'Hebrew', 'code': 'he'},
    'app_nl.arb': {'name': 'Dutch', 'code': 'nl'},
    'app_bs.arb': {'name': 'Bosnian', 'code': 'bs'},
    'app_ca.arb': {'name': 'Catalan', 'code': 'ca'},
    'app_cs.arb': {'name': 'Czech', 'code': 'cs'},
    'app_da.arb': {'name': 'Danish', 'code': 'da'},
    'app_eo.arb': {'name': 'Esperanto', 'code': 'eo'},
    'app_et.arb': {'name': 'Estonian', 'code': 'et'},
    'app_fa.arb': {'name': 'Persian', 'code': 'fa'},
    'app_gl.arb': {'name': 'Galician', 'code': 'gl'},
    'app_hu.arb': {'name': 'Hungarian', 'code': 'hu'},
    'app_id.arb': {'name': 'Indonesian', 'code': 'id'},
    'app_ml.arb': {'name': 'Malayalam', 'code': 'ml'},
    'app_pl.arb': {'name': 'Polish', 'code': 'pl'},
    'app_pt_BR.arb': {'name': 'Portuguese Brazil', 'code': 'pt_BR'},
    'app_sv.arb': {'name': 'Swedish', 'code': 'sv'},
    'app_uk.arb': {'name': 'Ukrainian', 'code': 'uk'},
    'app_vi.arb': {'name': 'Vietnamese', 'code': 'vi'},
    'app_zh_Hant_TW.arb': {'name': 'Chinese Traditional', 'code': 'zh_Hant_TW'},
}

def parse_arb_file(filepath):
    """Parse ARB file and return dictionary of keys and their metadata"""
    try:
        with open(filepath, 'r', encoding='utf-8') as f:
            content = f.read()
        
        # Try to parse as JSON first
        try:
            data = json.loads(content)
            keys = {}
            for key, value in data.items():
                if not key.startswith('@'):
                    keys[key] = str(value)
            return keys, {}
        except json.JSONDecodeError:
            pass
        
        # Fallback to line-by-line parsing
        lines = content.split('\n')
        keys = {}
        
        for line in lines:
            stripped = line.strip()
            if stripped.startswith('"') and ':' in line and not stripped.startswith('"@'):
                match = re.match(r'"([^"]+)"\s*:\s*"([^"]*)"', line)
                if match:
                    key = match.group(1)
                    value = match.group(2)
                    keys[key] = value
        
        return keys, {}
        
    except Exception as e:
        print(f"Error parsing {filepath}: {e}")
        return {}, {}

def update_arb_file(filepath, english_keys, existing_keys, plural_blocks):
    """Update ARB file with missing keys from English"""
    lines = []
    
    # Read existing content
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
    
    # Parse existing content
    parsed_keys, parsed_plurals = parse_arb_file(filepath)
    
    # Rebuild content with missing keys added
    content_lines = content.split('\n')
    new_lines = []
    
    # Keep existing content
    for line in content_lines:
        new_lines.append(line)
    
    # Find insertion point (before last closing brace)
    insert_index = len(new_lines)
    for i in range(len(new_lines) - 1, -1, -1):
        if new_lines[i].strip() == '}':
            insert_index = i
            break
    
    # Add missing keys
    missing_keys = []
    for key, english_value in english_keys.items():
        if key not in parsed_keys and not key.startswith('@'):
            missing_keys.append((key, english_value))
    
    if missing_keys:
        missing_keys.sort()
        for key, value in missing_keys:
            new_lines.insert(insert_index, f'  "{key}": "{value}",')
            insert_index += 1
            print(f"  Added: {key}")
    
    # Write back to file
    with open(filepath, 'w', encoding='utf-8') as f:
        f.write('\n'.join(new_lines))
    
    return len(missing_keys)

def main():
    """Main function to update localization files"""
    print("🌐 Updatium Localization Updater")
    print(f"📅 {datetime.now().strftime('%Y-%m-%d %H:%M:%S')}")
    print("=" * 50)
    
    # Parse English ARB file
    print("📖 Reading English master file...")
    english_keys, english_plurals = parse_arb_file('lib/l10n/app_en.arb')
    print(f"✅ Found {len(english_keys)} keys in English ARB")
    
    # Update each language file
    total_missing = 0
    updated_files = []
    
    for arb_file, lang_info in LANGUAGES.items():
        filepath = f'lib/l10n/{arb_file}'
        
        if os.path.exists(filepath):
            print(f"\n🔄 Processing {lang_info['name']} ({arb_file})...")
            
            existing_keys, existing_plurals = parse_arb_file(filepath)
            missing_count = update_arb_file(filepath, english_keys, existing_keys, existing_plurals)
            
            if missing_count > 0:
                total_missing += missing_count
                updated_files.append(f"{arb_file} (+{missing_count})")
                print(f"✅ Added {missing_count} missing keys")
            else:
                print(f"✅ Up to date")
        else:
            print(f"⚠️  {arb_file} not found")
    
    # Summary
    print("\n" + "=" * 50)
    print("📊 SUMMARY")
    print(f"🔑 Total English keys: {len(english_keys)}")
    print(f"📝 Files updated: {len(updated_files)}")
    print(f"➕ Total missing keys added: {total_missing}")
    
    if updated_files:
        print("\n📋 Updated files:")
        for file in updated_files:
            print(f"  • {file}")
    
    print(f"\n🚀 Ready to run: flutter gen-l10n")
    print("=" * 50)

if __name__ == "__main__":
    main()
