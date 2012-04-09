set xlabel "Matrix Size"
set ylabel "GFlops"
set key bottom
plot 480 with lines title 'Theoritical limit' lw 2 lc rgb "black", "./dgetrf_sp" with lines title 'static pivoting nb = 260' lw 2,"./dgetrf" with lines title 'partial pivoting nb = 260' lw 2,"./dgetrf_incpiv_true" with lines title 'incremental pivoting nb = 200 ib=40' lw 2
   