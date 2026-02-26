import json
import os
import re

def to_camel_case(s):
    acronyms = ["APK", "URL", "GH", "PAT", "GPL", "HTTP", "ZIP"]
    for a in acronyms:
        if s.startswith(a):
            s = a.lower() + s[len(a):]
            break
    if not s:
        return s
    return s[0].lower() + s[1:]

def extract_placeholders(s):
    # Find all {name} or {}
    return re.findall(r'\{([^{}]*)\}', s)

def convert_json_to_arb(source_dir, target_dir):
    if not os.path.exists(target_dir):
        os.makedirs(target_dir)

    # Load English first as source of truth for placeholders
    en_path = os.path.join(source_dir, "en.json")
    with open(en_path, 'r', encoding='utf-8') as f:
        en_data = json.load(f)

    # Pre-process English to determine placeholder names and types
    key_metadata = {}
    for key, value in en_data.items():
        new_key = to_camel_case(key)
        placeholders = []
        if isinstance(value, str):
            # Replace {} with p0, p1...
            count = 0
            def repl(m):
                nonlocal count
                p = f"p{count}"
                count += 1
                return p
            # We want to know the names
            names = extract_placeholders(value)
            p_names = []
            p_idx = 0
            for name in names:
                if name == "":
                    p_names.append(f"p{p_idx}")
                    p_idx += 1
                else:
                    p_names.append(name)
            key_metadata[new_key] = {"placeholders": p_names, "is_plural": False}
        elif isinstance(value, dict) and "one" in value and "other" in value:
            # Plural. We'll use 'count' and then any others
            names = extract_placeholders(value['one']) + extract_placeholders(value['other'])
            unique_names = []
            for n in names:
                if n and n not in unique_names and n != "":
                    unique_names.append(n)
            key_metadata[new_key] = {"placeholders": unique_names, "is_plural": True}

    for filename in os.listdir(source_dir):
        if filename.endswith(".json") and filename not in ["package-lock.json", "package.json"]:
            locale = filename.replace(".json", "")
            flutter_locale = locale.replace("-", "_")
            
            source_path = os.path.join(source_dir, filename)
            target_path = os.path.join(target_dir, f"app_{flutter_locale}.arb")
            
            with open(source_path, 'r', encoding='utf-8') as f:
                data = json.load(f)
            
            arb_data = {"@@locale": flutter_locale}
            
            for key, value in data.items():
                new_key = to_camel_case(key)
                meta = key_metadata.get(new_key)
                if not meta:
                    continue # Should not happen if en.json is complete
                
                if isinstance(value, str):
                    # Replace placeholders by order
                    names = extract_placeholders(value)
                    new_value = value
                    # Replace {} first
                    p_idx = 0
                    while "{}" in new_value:
                        new_value = new_value.replace("{}", f"{{p{p_idx}}}", 1)
                        p_idx += 1
                    
                    # Replace named placeholders if they were translated
                    # This is tricky. We'll replace all {anything} with meta placeholders by order.
                    current_placeholders = re.findall(r'\{([^{}]+)\}', new_value)
                    for i, old_p in enumerate(current_placeholders):
                        if i < len(meta['placeholders']):
                            new_p = meta['placeholders'][i]
                            # Avoid replacing if it's already correct or if it's a p0 style
                            if old_p != new_p:
                                new_value = new_value.replace(f"{{{old_p}}}", f"{{{new_p}}}")
                    
                    arb_data[new_key] = new_value
                    if meta['placeholders']:
                        arb_data[f"@{new_key}"] = {
                            "placeholders": {p: {"type": "Object"} for p in meta['placeholders']}
                        }
                        
                elif isinstance(value, dict) and meta['is_plural']:
                    one = value.get('one', '')
                    other = value.get('other', '')
                    
                    # Normalize placeholders in one/other
                    def normalize_plural_segment(seg):
                        if not seg: return seg
                        # Replace {} with {count}
                        seg = seg.replace("{}", "{count}")
                        
                        # Find all placeholders EXCEPT 'count'
                        # Use a set to keep track of what we've seen if we want to replace by index
                        # but wait, if the same translated placeholder appears twice, we should replace both.
                        found_ps = []
                        for p in re.findall(r'\{([^{}]+)\}', seg):
                            if p != 'count' and p not in found_ps:
                                found_ps.append(p)
                                
                        for i, old_p in enumerate(found_ps):
                            if i < len(meta['placeholders']):
                                new_p = meta['placeholders'][i]
                                if old_p != new_p:
                                    seg = seg.replace(f"{{{old_p}}}", f"{{{new_p}}}")
                        return seg

                    one = normalize_plural_segment(one)
                    other = normalize_plural_segment(other)
                    
                    arb_data[new_key] = f"{{count, plural, one{{{one}}} other{{{other}}}}}"
                    p_meta = {"count": {"type": "num"}}
                    for p in meta['placeholders']:
                        p_meta[p] = {"type": "Object"}
                    arb_data[f"@{new_key}"] = {"placeholders": p_meta}

            with open(target_path, 'w', encoding='utf-8') as f:
                json.dump(arb_data, f, ensure_ascii=False, indent=2)
            print(f"Converted {filename} to app_{flutter_locale}.arb")

if __name__ == "__main__":
    convert_json_to_arb(
        "/home/omeritzics/Dev-Projects/Updatium/assets/translations",
        "/home/omeritzics/Dev-Projects/Updatium/lib/l10n"
    )
