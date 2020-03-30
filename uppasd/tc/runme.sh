#! /bin/bash 
export OMP_NUM_THREADS=4 
for Temp in `seq 210 10 340` 
do
 mkdir T$Temp/ 2>/dev/null
 echo "Temp: " $Temp
 cp Base/* T$Temp/
 cd T$Temp/
 sed -i "s/TEMP/$Temp/g" inpsd.dat
 if [ $Temp -ne 50 ]
 then
   sed -i "s/#restart/restart/" inpsd.dat 
   cp ../restart.ccfro001.out .
 fi
 sd > out.log
 cp restart.ccfro001.out ../
 cd ..
done
exit
