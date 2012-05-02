set xlabel "Matrix Size"
set ylabel "GFlops"
set key bottom
plot  x*2.7*4*8 with lines title 'Theoritical limit' lw 2 lc rgb "black", "./dgetrf_sp_strong" with lines title 'static pivoting nb = 260' lw 2,"./dgetrf_std_strong" with lines title 'partial pivoting nb = 260' lw 2
   