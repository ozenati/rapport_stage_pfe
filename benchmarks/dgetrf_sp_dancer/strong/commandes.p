set xlabel "Number of processors"
set ylabel "GFlops"
set key bottom
plot  x*2.7*4*8 with lines title 'Theoritical limit' lw 2 lc rgb "black", "./dgetrf_sp_strong" with lines title 'LU decomposition without pivoting' lw 2, "./dpotrf_strong" with lines title 'cholesky' lw 2
   