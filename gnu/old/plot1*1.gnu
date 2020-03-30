set terminal  postscript enhanced color font ",20"
#set palette defined ( 0  "green", 5 "yellow", 10 "red" )
set output 'U_l_initmag.eps'
set style data linespoints
unset ztics
set key reverse
set key samplen 2
set pointsize 1.0
set view 0,0
#set xtics -5,0.5,5
#set ytics -100,20,100
set xlabel font ",24"
set xlabel "T (K)"
set xrange [0:    1500]
set ylabel font ",24"
set ylabel "U_L"
set yrange [ 0.4:   0.7]
#set arrow 1 from -1 to 1 nohead
#set arrow 2 from 0,-1 to 0,1 nohead lt 0
#set arrow 3 from 0,-150 to 0,150 nohead lt 0
set title ""
plot \
'./sym1_12_initmag/thermal.norm.dat' u 1:3 w lp lt 8 lw 3 lc 0 pt 2 t "L=12",\
'./sym1_20_initmag/thermal.norm.dat' u 1:3 w lp lt 8 lw 3 lc rgb "red" pt 6 t "L=20" ,\
#'./dos2/dos.dat' u 1:3 w l lt 8 lw 3 lc 1 t "dos2",\
#'./dos2/dos.dat' u 1:(-$4) w l lt 8 lw 3 lc 1 t "" ,\
#'./dos3/dos.dat' u 1:3 w l lt 8 lw 3 lc 2 t "dos3",\
#'./dos3/dos.dat' u 1:(-$4) w l lt 8 lw 3 lc 2 t "" ,\
#'./dos_rspt/dos.dat' u 1:3 w l lt 8 lw 3 lc 0 t "rspt" ,\
#'./dos_rspt/dos.dat' u 1:4 w l lt 8 lw 3 lc 1 t "" ,\
