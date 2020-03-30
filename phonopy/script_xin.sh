~/.local/bin/phonopy -f disp-{001..005}/vasprun.xml
~/.local/bin/phonopy -p band.conf  
~/.local/bin/phonopy-bandplot --gnuplot band.yaml >band.dat
