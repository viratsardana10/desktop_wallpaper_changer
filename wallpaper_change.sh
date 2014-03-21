echo '....We offer you the following Categories'
echo '1.Cars'
echo '2.Sports'
echo '3.Movies'
echo '4.Sports'
echo 'enter no. of categories you want to select'
read count
i=0
arr=(0 0 0 0)
while [ $i -lt $count ]
do
 echo 'enter your choice number'
 read choice
 arr[$i]=$choice
 i=`expr $i + 1`
done
if [ $arr[0]==1 ]
then
 start=396211
 k=$start
 end=396212
 number=`expr $end - $start + 1`
 echo 'number is' $number
 j=0
 while [ $j -lt $number ]
 do
  str='http://wallpapers.wallbase.cc/rozne/wallpaper-'$start'.jpg'
  wget -P /home/viratsardana/Desktop/photos $str
  j=`expr $j + 1`
  start=`expr $start + 1`
 done
fi
e=$((SECONDS+10))
while [ $SECONDS -le $e ]
do
 echo $k
 gsettings set org.gnome.desktop.background picture-uri '/home/viratsardana/Desktop/photos/wallpaper-'$k'.jpg'
 k=`expr $k + 1`
 sleep 6
done
