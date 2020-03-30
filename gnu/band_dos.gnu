set terminal  postscript enhanced color font ",20"
#set palette defined ( 0  "green", 5 "yellow", 10 "red" )
set output 'figure.eps'
set multiplot layout 1,2 
#margins 0,0.98,0,0.98 \
#		  spacing 0.
set style data linespoints
set style fill transparent solid 0.4

#right one
set origin 0.7,0
set size 0.25,1
unset ytics
set xtics 50
set yrange [-8: 6]
set title "DOS"
set arrow 1 from 0,-8 to 0,6 nohead lt 0
set arrow 2 from -50,0 to 50,0 nohead lt 0
plot\
'../dos/vasp/dos/TDOS.dat' u 2:1 w filledcurves y1=0  lt 8 lw 3 lc 0 t "",\
'../dos/vasp/dos/TDOS.dat' u 3:1 w filledcurves y1=0  lt 8 lw 3 lc 7 t "" ,\
#'../dos/vasp/dos/PDOS_Cu_UP.dat' u ($6+$7+$8+$9+$10):1 w l lt 8 lw 3 lc 7 t "Cu_d",\
#'../dos/vasp/dos/PDOS_Cu_DW.dat' u ($6+$7+$8+$9+$10):1 w l lt 8 lw 3 lc 7 t "",\
#'../dos/vasp/dos/PDOS_Fe_UP.dat' u ($6+$7+$8+$9+$10):1 w l lt 8 lw 3 lc 6 t "Fe_d",\
#'../dos/vasp/dos/PDOS_Fe_DW.dat' u ($6+$7+$8+$9+$10):1 w l lt 8 lw 3 lc 6 t "",\
#'../dos/vasp/dos/PDOS_Re_UP.dat' u ($6+$7+$8+$9+$10):1 w l lt 8 lw 3 lc 1 t "Re_d",\
#'../dos/vasp/dos/PDOS_Re_DW.dat' u ($6+$7+$8+$9+$10):1 w l lt 8 lw 3 lc 1 t "",\
#'../dos/vasp/dos/PDOS_O_UP.dat' u ($3+$4+$5):1 w l lt 8 lw 3 lc 4 t "O_p",\
#'../dos/vasp/dos/PDOS_O_DW.dat' u ($3+$4+$5):1 w l lt 8 lw 3 lc 4 t "",\

#left one
set origin 0,0
set size 0.75,1
set ytics
set key reverse
set key samplen 2
set pointsize 1.0
#set xtics 13,10,43
#set ytics -50,10,50
set xlabel font ",24"
#set xlabel "PDOS"
set ylabel font ",24"
set xrange [0.02165 : 2.573132185]
set ylabel "Energy (eV)"
set yrange [ -8:   6]
#set arrow 1 from -10 to 10 nohead
set arrow 1 from 0.86602,-8 to 0.86602,6 nohead lt 0
set arrow 2 from 1.36602,-8 to 1.36602,6 nohead lt 0
set arrow 3 from 1.86602,-8 to 1.86602,6 nohead lt 0
set arrow 4 from 0,0 to 2.5731,0 nohead lt 0
set xtics ('R' 0.02165, "{/Symbol G}" 0.86602,"X" 1.36602, "M" 1.86602, "{/Symbol G}" 2.5731 )
set title "SrCu_3Fe_2Re_2O_{12}"
plot \
'Band1' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band1' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band2' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band2' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band3' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band3' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band4' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band4' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band5' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band5' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band6' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band6' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band7' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band7' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band8' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band8' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band9' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band9' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band10' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band10' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band11' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band11' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band12' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band12' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band13' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band13' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band14' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band14' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band15' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band15' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band16' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band16' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band17' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band17' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band18' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band18' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band19' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band19' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band20' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band20' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band21' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band21' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band22' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band22' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band23' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band23' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band24' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band24' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band25' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band25' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band26' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band26' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band27' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band27' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band28' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band28' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band29' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band29' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band30' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band30' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band31' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band31' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band32' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band32' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band33' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band33' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band34' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band34' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band35' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band35' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band36' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band36' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band37' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band37' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band38' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band38' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band39' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band39' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band40' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band40' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band41' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band41' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band42' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band42' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band43' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band43' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band44' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band44' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band45' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band45' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band46' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band46' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band47' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band47' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band48' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band48' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band49' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band49' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band50' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band50' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band51' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band51' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band52' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band52' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band53' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band53' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band54' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band54' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band55' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band55' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band56' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band56' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band57' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band57' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band58' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band58' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band59' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band59' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band60' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band60' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band61' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band61' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band62' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band62' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band63' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band63' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band64' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band64' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band65' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band65' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band66' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band66' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band67' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band67' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band68' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band68' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band69' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band69' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band70' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band70' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band71' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band71' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band72' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band72' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band73' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band73' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band74' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band74' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band75' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band75' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band76' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band76' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band77' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band77' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band78' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band78' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band79' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band79' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band80' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band80' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band81' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band81' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band82' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band82' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band83' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band83' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band84' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band84' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band85' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band85' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band86' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band86' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band87' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band87' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band88' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band88' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band89' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band89' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band90' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band90' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band91' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band91' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band92' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band92' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band93' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band93' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band94' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band94' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band95' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band95' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band96' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band96' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band97' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band97' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band98' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band98' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band99' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band99' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band100' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band100' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band101' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band101' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band102' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band102' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band103' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band103' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band104' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band104' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band105' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band105' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band106' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band106' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band107' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band107' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band108' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band108' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band109' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band109' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band110' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band110' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band111' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band111' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band112' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band112' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band113' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band113' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band114' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band114' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band115' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band115' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band116' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band116' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band117' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band117' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band118' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band118' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band119' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band119' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band120' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band120' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band121' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band121' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band122' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band122' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band123' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band123' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band124' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band124' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band125' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band125' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band126' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band126' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band127' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band127' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band128' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band128' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band129' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band129' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band130' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band130' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band131' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band131' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band132' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band132' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band133' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band133' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band134' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band134' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band135' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band135' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band136' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band136' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band137' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band137' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band138' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band138' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band139' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band139' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band140' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band140' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band141' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band141' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band142' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band142' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band143' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band143' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band144' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band144' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band145' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band145' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band146' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band146' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band147' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band147' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band148' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band148' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band149' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band149' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band150' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band150' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band151' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band151' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band152' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band152' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band153' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band153' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band154' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band154' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band155' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band155' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band156' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band156' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band157' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band157' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band158' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band158' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band159' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band159' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band160' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band160' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band161' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band161' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band162' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band162' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band163' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band163' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band164' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band164' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band165' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band165' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band166' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band166' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band167' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band167' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band168' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band168' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band169' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band169' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band170' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band170' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band171' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band171' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band172' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band172' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band173' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band173' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band174' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band174' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band175' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band175' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band176' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band176' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band177' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band177' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band178' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band178' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band179' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band179' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band180' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band180' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band181' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band181' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band182' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band182' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band183' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band183' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band184' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band184' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band185' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band185' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band186' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band186' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band187' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band187' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band188' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band188' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band189' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band189' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band190' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band190' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band191' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band191' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band192' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band192' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band193' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band193' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band194' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band194' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band195' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band195' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band196' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band196' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band197' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band197' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band198' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band198' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band199' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band199' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band200' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band200' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band201' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band201' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band202' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band202' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band203' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band203' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band204' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band204' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band205' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band205' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band206' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band206' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band207' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band207' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band208' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band208' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band209' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band209' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band210' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band210' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band211' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band211' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band212' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band212' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band213' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band213' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band214' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band214' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band215' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band215' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band216' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band216' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band217' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band217' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band218' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band218' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band219' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band219' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band220' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band220' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band221' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band221' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band222' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band222' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band223' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band223' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band224' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band224' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band225' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band225' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band226' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band226' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band227' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band227' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band228' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band228' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band229' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band229' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band230' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band230' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band231' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band231' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
'Band232' u 1:2 w l lt 8 lw 3 lc 0 t "" ,\
'Band232' u 1:3 w l lt 8 lw 3 lc 7 t "" ,\
