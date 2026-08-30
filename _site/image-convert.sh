for f in `find . -name "*.jpg"`
do
    convert $f -resize 800x600 -quality 80% $f.resized.jpg
done
