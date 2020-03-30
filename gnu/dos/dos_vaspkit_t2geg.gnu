##
#2(s) 3(py) 4(pz) 5(px) 6(dxy) 7(dyz) 8(dz2-r2) 9(dxz) 10(dx2-y2)

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
#set title "band"
plot \
'./dos/TDOS.dat' u 1:2 w filledcurves y1=0 lt 8 lw 3 lc 0 t "Total" ,\
'./dos/TDOS.dat' u 1:3 w filledcurves y1=0 lt 8 lw 3 lc 0 t "" ,\
'./dos/PDOS_Cu_UP.dat' u ($1):(($6+$7+$9)) w l lt 8 lw 3 lc 0 t "Cu_{t2g}",\
'./dos/PDOS_Cu_DW.dat' u ($1):(($6+$7+$9)) w l lt 8 lw 3 lc 0 t "",\
'./dos/PDOS_Cu_UP.dat' u ($1):(($8+$10)) w l lt 8 lw 3 lc 7 t "Cu_{eg}",\
'./dos/PDOS_Cu_DW.dat' u ($1):(($8+$10)) w l lt 8 lw 3 lc 7 t "",\
'./dos/PDOS_Fe_UP.dat' u ($1):(($6+$7+$9)) w l lt 8 lw 3 lc 6 t "Fe_{t2g}",\
'./dos/PDOS_Fe_DW.dat' u ($1):(($6+$7+$9)) w l lt 8 lw 3 lc 6 t "",\
'./dos/PDOS_Fe_UP.dat' u ($1):(($8+$10)) w l lt 8 lw 3 lc 4 t "Fe_{eg}",\
'./dos/PDOS_Fe_DW.dat' u ($1):(($8+$10)) w l lt 8 lw 3 lc 4 t "",\
'./dos/PDOS_Re_UP.dat' u ($1):(($6+$7+$9)) w l lt 8 lw 3 lc 2 t "Re_{t2g}",\
'./dos/PDOS_Re_DW.dat' u ($1):(($6+$7+$9)) w l lt 8 lw 3 lc 2 t "",\
'./dos/PDOS_Re_UP.dat' u ($1):(($8+$10)) w l lt 8 lw 3 lc 1 t "Re_{eg}",\
'./dos/PDOS_Re_DW.dat' u ($1):(($8+$10)) w l lt 8 lw 3 lc 1 t "",\
'./dos/PDOS_O_UP.dat' u ($1):(($3+$4+$5)) w l lt 8 lw 3 lc 3 t "O_p",\
'./dos/PDOS_O_DW.dat' u ($1):(($3+$4+$5)) w l lt 8 lw 3 lc 3 t "",\





