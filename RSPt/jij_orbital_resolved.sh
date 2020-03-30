ndis=

for i in `seq 1 1 '$ndis'`
do
	  b=$( echo | awk '{x='$i'; print x*5}' )
	  let a=$b-4

	  sed -n ''$a','$b'p' jij > jij_$i
done

for i in `seq 1 1 '$ndis'`
do

colm1=$( awk 'NR==1,NR==5{sum1+=$2} END {print sum1}' jij_"$i")
colm2=$( awk 'NR==1,NR==5{sum2+=$3} END {print sum2}' jij_"$i")
colm3=$( awk 'NR==1,NR==5{sum3+=$4} END {print sum3}' jij_"$i")
colm4=$( awk 'NR==1,NR==5{sum4+=$5} END {print sum4}' jij_"$i")
colm5=$( awk 'NR==1,NR==5{sum5+=$6} END {print sum5}' jij_"$i")
sum=$( echo | awk '{ c1='$colm1';c2='$colm2';c3='$colm3';c4='$colm4';c5='$colm5'; print c1+c2+c3+c4+c5}' )




echo $colm1 $colm2 $colm3 $colm4 $colm5 $sum

done
