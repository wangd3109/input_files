set terminal  postscript enhanced color font ",20"
#set palette defined ( 0  "green", 5 "yellow", 10 "red" )
set output '1.eps'
set style data linespoints
unset ztics
set key reverse
set key samplen 2
set pointsize 1.0
set view 0,0
#set xtics -5,0.5,5
#set ytics -100,20,100
set xlabel font ",24"
set xlabel "Energy (eV)"
set xrange [-10:    10]
set ylabel font ",24"
set ylabel "PDOS (state/eV)"
#set yrange [ -40:   40]
set arrow 1 from -1 to 1 nohead
set arrow 2 from 0,-1 to 0,1 nohead lt 0
set arrow 3 from 0,-50 to 0,50 nohead lt 0
set title ""
plot \
'./TDOS.dat' u 1:2 w l lt 8 lw 3 lc 0 t "",\
'./TDOS.dat' u 1:3 w l lt 8 lw 3 lc 2 t "" ,\
#'./dos2/dos.dat' u 1:3 w l lt 8 lw 3 lc 1 t "dos2",\
#'./dos2/dos.dat' u 1:(-$4) w l lt 8 lw 3 lc 1 t "" ,\
#'./dos3/dos.dat' u 1:3 w l lt 8 lw 3 lc 2 t "dos3",\
#'./dos3/dos.dat' u 1:(-$4) w l lt 8 lw 3 lc 2 t "" ,\
#'./dos_rspt/dos.dat' u 1:3 w l lt 8 lw 3 lc 0 t "rspt" ,\
#'./dos_rspt/dos.dat' u 1:4 w l lt 8 lw 3 lc 1 t "" ,\
