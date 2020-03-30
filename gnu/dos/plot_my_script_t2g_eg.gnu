##
#2,3(s) 4,5(py) 6,7(pz) 8,9(px) 10,11(dxy) 12,13(dyz) 14,15(dz2-r2) 16,17(dxz) 18,19(dx2-y2)

set terminal  postscript enhanced color font ",20"
set style fill transparent solid 0.4
#set palette defined ( 0  "green", 5 "yellow", 10 "red" )
set output '1.eps'
set style data linespoints
unset ztics
set key reverse
set key samplen 2
set pointsize 1.0
set view 0,0
#set xtics 13,10,43
#set ytics -50,10,50
set xlabel font ",24"
#set xlabel "PDOS"
set xrange [-8:    6]
set ylabel font ",24"
#set ylabel "Energy"
set yrange [ -40:   40]
set arrow 1 from -8,0 to 6,0 nohead lt 0
set arrow 2 from 0,-40 to 0,40 nohead lt 0
set title "from my script"
plot \
'./nDOS0' u 1:2 w filledcurves y1=0 lt 8 lw 3 lc 0 t "Total" ,\
'./nDOS0' u 1:(-$3) w filledcurves y1=0 lt 8 lw 3 lc 0 t "" ,\
'./3-8.dat' u ($1):(($10+$12+$16)) w l lt 8 lw 3 lc 0 t "Cu_{t2g}",\
'./3-8.dat' u ($1):(-($11+$13+$17)) w l lt 8 lw 3 lc 0 t "",\
'./3-8.dat' u ($1):(($14+$18)) w l lt 8 lw 3 lc 7 t "Cu_{eg}",\
'./3-8.dat' u ($1):(-($15+$19)) w l lt 8 lw 3 lc 7 t "",\
'./9-12.dat' u ($1):(($10+$12+$16)) w l lt 8 lw 3 lc 6 t "Fe_{t2g}",\
'./9-12.dat' u ($1):(-($11+$13+$17)) w l lt 8 lw 3 lc 6 t "",\
'./9-12.dat' u ($1):(($14+$18)) w l lt 8 lw 3 lc 4 t "Fe_{eg}",\
'./9-12.dat' u ($1):(-($15+$19)) w l lt 8 lw 3 lc 4 t "",\
'./13-16.dat' u ($1):(($10+$12+$16)) w l lt 8 lw 3 lc 2 t "Re_{t2g}",\
'./13-16.dat' u ($1):(-($11+$13+$17)) w l lt 8 lw 3 lc 2 t "",\
'./13-16.dat' u ($1):(($14+$18)) w l lt 8 lw 3 lc 1 t "Re_{eg}",\
'./13-16.dat' u ($1):(-($15+$19)) w l lt 8 lw 3 lc 1 t "",\
'./17-40.dat' u ($1):(($4+$6+$8)) w l lt 8 lw 3 lc 3 t "O_p",\
'./17-40.dat' u ($1):(-($5+$7+$9)) w l lt 8 lw 3 lc 3 t "",\
