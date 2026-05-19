MOD_ROOT="../.."

rm -fr discord
mkdir -p discord/icons discord/albums

find "$MOD_ROOT/images/icons" -name "*.png" -type f | while read -r file; do
	filename=$(basename "$file")
  echo "$filename"

	prefix="icon-"
	better_filename="${filename#$prefix}"

  ffmpeg -hide_banner -loglevel error -y -i "$file" -pix_fmt rgba -vf "crop=in_h:in_h:0:0, scale=512:512:flags=neighbor" "discord/icons/$better_filename"
done

find "$MOD_ROOT/images/freeplay/albumRoll" -name "*.png" -type f | while read -r file; do
	if [ -f "${file%.png}.xml" ]; then
		continue
	fi

	filename=$(basename "$file")
  echo "$filename"

  ffmpeg -hide_banner -loglevel error -y -i "$file" -pix_fmt rgba -vf "scale=512:512:flags=neighbor" "discord/albums/$filename"
done

oxipng -o 6 --strip safe --alpha -r discord