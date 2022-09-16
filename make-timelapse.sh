mkdir temp-output
cp ./capture/*.jpg ./temp-output

cd ./temp-output
rename -N 0001 's/.*/snapshot_$N.jpg/' *.jpg
ffmpeg -i snapshot_%04d.jpg output.mp4
date +"%Y_%m_%d" | xargs -I {} mv output.mp4 ../timelapse/timelapse_{}.mp4
cd ..

rm -rf temp-output
