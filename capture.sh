# camera capture
/opt/homebrew/bin/imagesnap -w 1 camera.jpg
date +"%y-%m-%d %r" | xargs -I {} /opt/homebrew/bin/magick camera.jpg -undercolor '#0008' -gravity NorthWest -pointsize 30 -fill GhostWhite -draw "text 10,305 '{}'" camera.jpg

# screen capture
/usr/sbin/screencapture screen.jpg
/opt/homebrew/bin/magick convert screen.jpg -resize 10% screen.jpg
/opt/homebrew/bin/magick camera.jpg -gravity NorthWest -draw "image over 10,10 0,0 'screen.jpg'" camera.jpg
rm screen.jpg

# move to out folder
date +"%y-%m-%d_%H_%M_%S" | xargs -I {} mv camera.jpg capture/{}.jpg
