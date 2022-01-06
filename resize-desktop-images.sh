#!/usr/bin/env bash

# https://askubuntu.com/questions/781497/how-can-i-compress-images
# convert -resize 85% test.jpg test-new.jpg
# convert -quality 50% test.jpg test-new.jpg

for fullpath in $(find ~/Desktop/src/ -name '*.jpg'); do
    filename="${fullpath##*/}"                      # Strip longest match of */ from start
    dir="${fullpath:0:${#fullpath} - ${#filename}}" # Substring from 0 thru pos of filename
    base="${filename%.[^.]*}"                       # Strip shortest match of . plus at least one non-dot char from end
    ext="${filename:${#base} + 1}"                  # Substring from len of base thru end
    if [[ -z "$base" && -n "$ext" ]]; then          # If we have an extension and no base, it's really the base
        base=".$ext"
        ext=""
    fi

    # echo -e "$fullpath:\n\tdir  = \"$dir\"\n\tbase = \"$base\"\n\text  = \"$ext\""
#    convert -resize 60% -quality 50% $fullpath $dir$base-preview.$ext
#    convert -quality 10% $fullpath $dir$base-preview.$ext
#    convert -quality 30% $fullpath $dir$base-preview.$ext
#    convert -resize 20% -quality 25% $fullpath $dir$base-preview.$ext
    convert -resize 60% $fullpath $dir$base-preview.$ext
#    convert -resize 22% -quality 50% $fullpath $dir$base-preview.$ext

#    convert $fullpath -gravity NorthWest -pointsize 128 -font Roboto-Bold -fill "rgba(0,0,0,0.5)" -gravity center -annotate +0+0 "axa.ro" $fullpath
#    convert $dir$base-preview.$ext -gravity NorthWest -pointsize 64 -font Roboto-Bold -fill "rgba(0,0,0,0.5)" -gravity center -annotate +0+0 "axa.ro" $dir$base-preview.$ext

#    convert -quality 25% $fullpath $dir../out/$base-preview.$ext
#    convert $fullpath ~/Desktop/output/$base.jpg

#    rm -f $fullpath
#    mv -f $dir$base-preview.$ext $fullpath
#    convert -resize 50% $fullpath $dir$base-preview.$ext
done

# find ~/Desktop -name '[0-9]-preview.jpg' -exec identify -verbose {} \; | grep Interlace
