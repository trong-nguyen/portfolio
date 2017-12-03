mkdir m4v;
for i in *.m4v;
  do name=`echo $i | cut -d'.' -f1`;
  echo $name;
  ffmpeg -i "$i" -profile:v baseline -level 3.0 -pix_fmt yuv420p "m4v/${name}.m4v"
done