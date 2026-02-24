MOD_ROOT="../../.."
MOD_NAME="FunkinRemnants"
EXCLUDE_LIST="modpackExcludeList.txt"

rm -fr modpack

(find "$MOD_ROOT" -type f | grep -v -f "$EXCLUDE_LIST") | while read -r file; do
  modpackFile="modpack/${file#$MOD_ROOT/}"
  echo "$modpackFile"

  mkdir -p "$(dirname "$modpackFile")"
  cp "$file" "$modpackFile"
done

zipModpack() {
  local name=$1
  rm "$name"

  if command -v 7z > /dev/null 2>&1
  then
    7z a -tzip "$name" ./modpack/*
  elif command -v powershell > /dev/null 2>&1
  then
    powershell -Command "Compress-Archive -Path './modpack/*' -DestinationPath '$name'"
  else
    echo "Error! Cannot bundle the modpack!"
    exit 1
  fi
}

zipModpack "$MOD_NAME.zip"

if command -v haxelib > /dev/null 2>&1
then
  cwd="$(pwd)"
  echo "$cwd"
  folderPath="$cwd/modpack"
  cd "$MOD_ROOT"

  rm -fr astc-textures
  haxelib --quiet --always git astc-compressor https://github.com/KarimAkra/astc-compressor develop
  haxelib --global run astc-compressor compress-from-json -json ./astc-compression-data.json

  find "astc-textures/" -name "*.astc" -type f | while read -r file; do
    echo "$file"
    normalFileLoc="$folderPath/${file#astc-textures/}"

    mv "$file" "$normalFileLoc"
    rm "${normalFileLoc%.*}.png"
  done

  cd "$cwd"
  zipModpack "$MOD_NAME-MOBILE.zip"
fi

rm -fr modpack