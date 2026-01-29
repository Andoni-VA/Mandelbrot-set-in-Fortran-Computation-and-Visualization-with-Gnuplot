set term qt size 800,600
set view map
set size ratio -1
set xlabel "Re"
set ylabel "Im"

set palette rgbformulae 7,5,15
set cblabel "Iterations"

plot "mandelbrot.dat" using 1:2:3 with points palette pointsize 0.5 notitle
