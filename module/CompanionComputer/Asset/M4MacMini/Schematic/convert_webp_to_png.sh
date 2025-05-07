#!/usr/bin/env bash
# Converts all .webp files in the current directory to .png files

CRDIR="$(
  cd "$(dirname "$0")" || exit
  pwd
)"


cd "${CRDIR}/proto" || exit

for file in *.webp; do
  if [ -f "$file" ]; then
    magick convert "$file" "${CRDIR}/${file%.webp}.png"
  fi
done
