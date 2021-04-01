# Sets font, file type, and file name.

set terminal emf font "Arial,10" fontscale 1.0 size 1200, 500 
set output 'graph.emf'

# Declares titles, x and y labels, and tics on the graph.
set title "%title%\n%title line1%" font "Arial, 8"
set ylabel "%ylabel%" font "Arial, 8"
set xlabel "%xlabel%" font "Arial, 8"
set xtics nomirror
set ytics nomirror
set y2tics nomirror

# Deletes legend.
set nokey

# Declares x, y, and y2 ranges.
set xrange [%xmin%:%xmax%]
set logscale x
set yrange [%ymin%:%ymax%]
set y2range [30:80]

# Allows for dual y-axes.
set multiplot

# Declares grid specifications.
set style line 12 lc rgb '#808080' lt 0 lw 1
set grid back ls 12

# Plots the data files on the appropriate axis with custom points.
plot 'Test_Field_Probe_H.dat' lc '#800000' ps .35 pt 18 axis x1y1, 'Limit.dat' w d dt 0 axis x1y1, \
    'Test_Fwd_Pwr_H.dat' lc '#000080' ps .35 pt 1 axis x1y2
