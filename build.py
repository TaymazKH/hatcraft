import os
import zipfile


items_to_zip = ["data", "pack.mcmeta", "pack.png"]
output_filename = f"Hatcraft_{input('game version: ')}_v{input('pack version: ')}.zip"


with zipfile.ZipFile(output_filename, 'w', zipfile.ZIP_DEFLATED) as zipf:
    for item in items_to_zip:
        if os.path.isdir(item):
            for root, _, files in os.walk(item):
                for file in files:
                    file_path = os.path.join(root, file)
                    zipf.write(file_path, file_path)
                    print(f" -> Added file: {file_path}")
        else:
            zipf.write(item, item)
            print(f" -> Added file: {item}")

print(f"Done!")
