# 1ft = 12 inch, then 1 inch = 1/12 ft. Therefore 42 inch = 42/12 ft
read -p "Enter inches : " inches
printf "\n$inches inches is equal to "
echo $inches/12 | awk -F/ '{print $1 / $2 " ft"}'
printf "\n"

#program for area in metres
read -p "Enter length of plot : " length
read -p "Enter breadth of plot : " breadth
area=$((length*breadth))
area=`echo $area 0.305 | awk '{print $1*$2}'`
printf "Area in metres = $area \n\n"

#program for area of multiple plots in acre
read -p "Enter no. of plots : " num
TotalArea=`echo $area $num | awk '{print $1*$2}'`
Acre=`echo $TotalArea 4046.86 | awk '{print $1/$2}'`
printf "\nTotal area for $num plots is equal to $Acre acres\n"




