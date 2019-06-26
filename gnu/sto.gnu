set terminal  postscript enhanced color font ",20"
#set palette defined ( 0  "green", 5 "yellow", 10 "red" )
set output '1.eps'
set style data linespoints
unset ztics
set key reverse
set key samplen 2
set pointsize 1.0
set view 0,0
set xtics -5,1,5
set ytics 0,50,250
set xlabel font ",24"
set xlabel "Energy(eV)"
set xrange [-2:    2]
set ylabel font ",24"
set ylabel "Density of States (state/eV)"
set yrange [ 0:   200]
set arrow 1 from -2 to 2 nohead
set title "DOS for Cobalt on SrO, DFT+U+SOC(001)"
plot 'nDOS0' u 1:2 w l lt 8 lw 3 lc 1 t "total",\
'nCo' u 1:2 w l lt 8 lw 3 lc 2 t "Co",\
                        'nO' u 1:2 w l lt 8 lw 3 lc 3 t "O",\
                        'nTi' u 1:2 w l lt 8 lw 3 lc 4 t "Ti",\
'nSr' u 1:2 w l lt 8 lw 3 lc 5 t "Sr",\
