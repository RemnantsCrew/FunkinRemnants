MOD_ROOT="../../.."
MOD_NAME="FunkinRemnants"
EXCLUDE_LIST="modpackExcludeList.txt"

rm -fr modpack
mkdir -p "modpack"

echo "Moving and excluding files..."
tar -C "$MOD_ROOT" --exclude-vcs --checkpoint=.100 -X "$EXCLUDE_LIST" -cf - . | tar -C "modpack" -xf -
echo "Done!"

zipModpack() {
  local name=$1

  echo "Zipping $name..."
  rm -f "$name"

  if command -v 7z > /dev/null 2>&1
  then
    echo "NOTICE: Using 7z"
    7z a -tzip "$name" ./modpack/*
  elif command -v tar > /dev/null 2>&1
  then
    echo "NOTICE: Using tar (Using 7z is highly recommended!)"
    tar -caf "$name" -C "./modpack" --checkpoint=.100 .
    else
    echo "Error! Cannot bundle the modpack!"
    exit 1
  fi

  echo "Done!"
}

zipModpack "$MOD_NAME.zip"

if command -v haxelib > /dev/null 2>&1
then
  cwd="$(pwd)"
  folderPath="$cwd/modpack"
  cd "$MOD_ROOT"

  rm -fr astc-textures
  haxelib --quiet --always git astc-compressor https://github.com/KarimAkra/astc-compressor develop
  haxelib --global run astc-compressor compress-from-json -json ./astc-compression-data.json

  find "astc-textures/" -type f -name "*.astc" | while read -r file; do
    relPath="${file#astc-textures/}"
    basePath="${relPath%.astc}"

    echo "$relPath"

    mv "$file" "$folderPath/$relPath"
    rm -f "$folderPath/$basePath.png"
  done

  rm -fr astc-textures

  cd "$cwd"
  zipModpack "$MOD_NAME-MOBILE.zip"
fi

rm -fr modpack