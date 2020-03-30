#awk '$5<1 && $6<1 && $7<1 {print $0}' struct* > tmp1 
#awk '$5>0 && $6>0 && $7>0 {print $0}' tmp1 > tmp2 ##提取所有在原胞内的数据
#awk '$1==1 {print $0}' tmp2 >tmp3		## 提取以第一个原子为site i的数据
#awk '$2<15  {print $0}' tmp3 > tmp4		## 提取以site i为中心，原胞内的数据
#grep '6.33' tmp3

for i in `seq 14`
do
awk '$1=='$i' {print $0}' struct* > tmp1
awk '$1=='$i' {print $0}' jfile > tmp2
echo $i >> ReCu
echo $i >> ReFe
grep '6.33' tmp1 >> ReCu
grep '0.633' tmp2 >> ReCu
grep '6.64' tmp1 >> ReFe
grep '0.664' tmp2 >> ReFe
done
