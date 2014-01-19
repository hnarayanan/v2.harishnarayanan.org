#! /bin/sh

for image in *.jpg
do
    imgname=`basename "$image" .jpg`
    echo "<a href=\"gallery/$imgname.html\"><img src=\"images/photos/thumbs/$image\" alt=\"${imgname:3}\" title=\"${imgname:3}\" /></a>"
    cat first.html > $imgname.html
    echo "        <title>Harish Narayanan's Work Pages :: Gallery :: ${imgname:3}</title>" >> $imgname.html
    cat second.html >> $imgname.html
    echo "      <a href=\"../entropy.html#gallery\"><img src=\"../images/photos/larger/$image\" alt=\"${imgname:3}\" title=\"${imgname:3} by Harish Narayanan\" /></a>" >> $imgname.html
    cat third.html >> $imgname.html 
done

