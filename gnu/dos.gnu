set terminal  postscript enhanced color font ",20"
#set palette defined ( 0  "green", 5 "yellow", 10 "red" )
set output '1.eps'
set style data linespoints
unset ztics
set key reverse
set key samplen 2
set pointsize 1.0
set view 0,0
set xtics -5,0.5,5
set ytics -100,20,100
set xlabel font ",24"
set xlabel "Energy(eV)"
set xrange [-5:    3]
set ylabel font ",24"
set ylabel "PDOS(state/eV)"
set yrange [ -40:   40]
set arrow 1 from -2 to 2 nohead
set title "DOS for LMO (dft-dos), experimental structure"
plot 'dos.dat' u 1:3 w l lt 8 lw 3 lc 1 t "tdos",\
'dos.dat' u 1:(-$4) w l lt 8 lw 3 lc 1 t "",\
                        'pdos-0302010100-obs.dat' u 1:3 w l lt 8 lw 3 lc 3 t "Mn-d",\
                        'pdos-0302010100-obs.dat' u 1:(-$4) w l lt 8 lw 3 lc 3 t "",\
