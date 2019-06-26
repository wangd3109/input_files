set term postscript enhanced color font ",20"
set output 'figure.eps'
set multiplot layout  1,2

#

#upper one
set origin 0,0
set size 1, 0.5
set title ""
unset ytics
set lmargin 0
set rmargin 0
set bmargin 0
set tmargin 0
set ylabel ""
plot 'data_e' u 1:4 w l lt 8 lw 3 lc 1 t "" ,\

#lower one
set origin 0,0.50
set size 1,0.5
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
unset xtics
unset ytics
plot 'data_e' u 1:8 w l lt 8 lw 3 lc 1 t "" ,\
