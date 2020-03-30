set term postscript enhanced color font ",20"
set output 'figure.eps'
set multiplot layout 2,2 

#
set origin 0.05,0.55
set size 0.65,0.45
set title "Phonon dispersion"
set xlabel font ",18"
set ylabel font ",18"
set ylabel "Frequency (THz)"
set lmargin  1
set rmargin  0
set bmargin  0
set tmargin  0
set arrow 1 from first 0.14554290,-1 to first 0.14554290,9 nohead lt 0
set arrow 2 from first 0.21831430,-1 to first 0.21831430,9 nohead lt 0
set arrow 3 from first 0.38352070,-1 to first 0.38352070,9 nohead lt 0
set arrow 4 from first 0 to 0.58736070 nohead
set xtics 1 ("{/Symble G}" 0.00000000, "{/Symble X}" 0.14554290, "{/Symble W}" 0.21831430, "{/Symble G" 0.38352070, "{/Symble L}" 0.58736070)
set xrange [0 :0.58736070]
set yrange [-1 : 9]
plot 'q1_band' u 1:2 w l lt 8 lw 3 lc 1 t "" ,\

#
#set origin 0.5,0.5 
set origin 0.7,0.55
set size 0.25,0.45
set title "Phonon DOS"
unset ylabel
unset xtics
set ytics (""-5,""0,""5,""10) 
set xrange [0:1.5]
unset arrow 1
unset arrow 2
unset arrow 3
unset arrow 4
#set arrow 5 from 0,0 to 1.5,0 nohead lt 0
plot 'q1_partial_dos.dat' u 2:1 w l lt 8 lw 3 lc 1 t "" ,\
#
set title

#
set origin 0.05,0
set size 0.65,0.45
set title ""
set ytics -8,4,12
set xlabel font ",18"
set ylabel font ",18"
set xlabel "Wave vector"
set ylabel "Frequency (THz)"
set arrow 1 from first 0.28727380,-8 to first 0.28727380,12 nohead lt 0
set arrow 2 from first 0.43091070,-8 to first 0.43091070,12 nohead lt 0
set arrow 3 from first 0.75209250,-8 to first 0.75209250,12 nohead lt 0
set arrow 4 from first 0 to 1 nohead
set xtics 1 ("{/Symble G}" 0.00000000, "{/Symble X}" 0.28727380, "{/Symble W}" 0.43091070, "{/Symble G" 0.75209250, "{/Symble L}" 1)
set xrange [0 :1.00087890]
set yrange [-8 : 12]
plot 'fm_band' u 1:2 w l lt 8 lw 3 lc 1 t "" ,\

#
set origin 0.7,0
set size 0.25,0.45
set xlabel "Intensity (States/THz)"
set ylabel
set xrange [0:1.5]
set xtics 2 0,0.5,1.5
unset ytics
unset arrow 1
unset arrow 2
unset arrow 3
unset arrow 4
plot 'fm_partial_dos.dat' u 2:1 w l lt 8 lw 3 lc 1 t "" ,\
