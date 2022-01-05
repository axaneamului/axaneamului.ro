#!/usr/bin/env bash

# sudo apt install fonts-roboto

for fullpath in $(find ~/Desktop/src -name '*.jpg'); do
    filename="${fullpath##*/}"                      # Strip longest match of */ from start
    dir="${fullpath:0:${#fullpath} - ${#filename}}" # Substring from 0 thru pos of filename
    base="${filename%.[^.]*}"                       # Strip shortest match of . plus at least one non-dot char from end
    ext="${filename:${#base} + 1}"                  # Substring from len of base thru end
    if [[ -z "$base" && -n "$ext" ]]; then          # If we have an extension and no base, it's really the base
        base=".$ext"
        ext=""
    fi

#  convert $fullpath -gravity NorthWest -pointsize 64 -font Roboto-Bold -fill "rgba(0,0,0,0.4)" -gravity center -annotate +0+0 "axa.ro" $dir$base-wm.$ext
#  convert $fullpath -gravity NorthWest -pointsize 64 -font Roboto-Bold -fill "rgba(0,0,0,0.5)" -gravity center -annotate +0+0 "axa.ro" $fullpath
  convert $fullpath -gravity NorthWest -pointsize 64 -font Roboto-Bold -fill "rgba(0,0,0,0.4)" -gravity center -annotate +0+0 "axa.ro" $fullpath
done
