dir=`pwd`

for i in aa  ab  ab_prime  ac_prime
do

	  cd $dir/$i/afm
	  cif2cell -p rspt --rspt-new CONTCAR.cif
	  echo -e "lmax\n8\n " >> symt.inp
	  echo -e "mtradii\n3\n" >> symt.inp
	  sed -i '' '34s/24 l a/24 l up/' symt.inp
	  sed -i '' '35s/24 l a/24 l up/' symt.inp
	  sed -i '' '36s/24 l a/24 l dn/' symt.inp
	  sed -i '' '37s/24 l a/24 l dn/' symt.inp
	  echo -e "\nspinpol" >> symt.inp

	  cd $dir/$i/fm
	  cif2cell -p rspt --rspt-new CONTCAR.cif
	  echo -e "lmax\n8\n " >> symt.inp
	  echo -e "mtradii\n3\n" >> symt.inp
	  sed -i '' '34s/24 l a/24 l up/' symt.inp
	  sed -i '' '35s/24 l a/24 l up/' symt.inp
	  sed -i '' '36s/24 l a/24 l up/' symt.inp
	  sed -i '' '37s/24 l a/24 l up/' symt.inp
	  echo -e "\nspinpol" >> symt.inp

done

