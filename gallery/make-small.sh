#! /bin/sh

for image in *.JPG
do
    imgname=`basename "$image" .JPG`
    mv "$image" "$imgname.jpg"
done

