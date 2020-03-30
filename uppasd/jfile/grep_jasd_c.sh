#!/bin/bash
### in Cartesian cooridinate

rm jASD

position_a=$(grep -n 'Exchange parameters: initialisation' out  |sed 's/://' | awk '{print $1}')
position_b=$(grep -n 'END of the table of neighbours' out  |sed 's/://' | awk '{print $1}')
jij_a=$(grep -n 'Table of calculated Jij parameters' out  |sed 's/://' | awk '{print $1}')
jij_b=$(grep -n '  END  ' out  |sed 's/://' | awk '{print $1}')


echo $position_a $position_b $jij_a $jij_b

sed -n ''$position_a','$position_b' p' out > position
sed -n ''$jij_a','$jij_b' p' out > jij

sed -i '2 d' position

c_x=$(awk 'NR==2{print $6}' position ) #get the coordination of central atom
c_y=$(awk 'NR==2{print $7}' position ) #get the coordination of central atom
c_z=$(awk 'NR==2{print $8}' position ) #get the coordination of central atom
site=$(awk 'NR==2{print $2}' position ) #get the coordination of central atom

echo $c_x $c_y $c_z

echo "# site_i site_j x y z Jij(mRy) dist.(a.u.)" > title
awk '{cx='$c_x'; cy='$c_y'; cz='$c_z';print '$site',$2,$6-cx,$7-cy,$8-cz}' position > tmp1
#awk '{cx='$c_x', cy='$c_y',cz='$c_z';print '$site',$2,$6-'$c_x',$7-'$c_y',$8-'$c_z'}' position > tmp1
awk '{print $3,$2}' jij >tmp2

paste tmp1 tmp2 > tmp3
cat title tmp3 >> jASD

sed -i '2,3d' jASD
sed -i '$d' jASD

rm position jij tmp* title 
