dir=`pwd`

for i in `seq 14`
do
cd $dir/$i
mkdir my_jfile/
cp out my_jfile/
cd my_jfile
bash ../../grep_jasd_d_format.sh
cp jASD $dir/my_jfiles/jfile-$i
done
