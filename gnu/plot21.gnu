set term postscript enhanced color font ",20"
set output 'figure.eps'
set multiplot layout  1,2

#

#lower one
set origin 0,0
set size 1, 0.5
set title ""
unset ytics
set lmargin 0
set rmargin 0
set bmargin 0
set tmargin 0
set xrange [-10 : 7.5]
set ylabel ""
set arrow 1 from 0,-100 to 0,100 nohead lt 0
plot \
'./dos/LMDOS.W.UP.dat' u 1:($6+$7+$8+$9+$10) w l lt 8 lw 3 lc 7 t "W_d",\
'./dos/LMDOS.W.DW.dat' u 1:($6+$7+$8+$9+$10) w l lt 8 lw 3 lc 7 t "",\
'./dos/LMDOS.Fe.UP.dat' u 1:($6+$7+$8+$9+$10) w l lt 8 lw 3 lc 6 t "Fe_d",\
'./dos/LMDOS.Fe.DW.dat' u 1:($6+$7+$8+$9+$10) w l lt 8 lw 3 lc 6 t "",\
'./dos/LMDOS.Yb.UP.dat' u 1:($6+$7+$8+$9+$10) w l lt 8 lw 3 lc 2 t "Yb_d",\
'./dos/LMDOS.Yb.DW.dat' u 1:($6+$7+$8+$9+$10) w l lt 8 lw 3 lc 2 t "",\
'./dos/LMDOS.O.UP.dat' u 1:($3+$4+$5) w l lt 8 lw 3 lc 1 t "O_p",\
'./dos/LMDOS.O.DW.dat' u 1:($3+$4+$5) w l lt 8 lw 3 lc 1 t "",\

#upper one
set origin 0,0.50
set size 1,0.5
set title "periodic"
#set xlabel "Intensity (States/THz)"
#set ylabel
#set xrange [0:1.5]
#set xtics 2 0,0.5,1.5
#set lmargin 0
#set rmargin 0
#set tmargin 1
#set bmargin 0
set ylabel ""
set xlabel ""
set yrange [-170: 170]
set arrow 1 from 0,-170 to 0,170 nohead lt 0
unset xtics
unset ytics
plot\
'./dos/TDOS.dat' u 1:2 w l lt 8 lw 3 lc 0 t "Total",\
'./dos/TDOS.dat' u 1:3 w l lt 8 lw 3 lc 0 t "" ,\


