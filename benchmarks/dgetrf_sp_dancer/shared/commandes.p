set xlabel "Matrix Size"
set ylabel "GFlops"
set key bottom
plot 480 with lines title 'Theoritical limit' lw 2 lc rgb "black", "./dgetrf_sp" with lines title 'LU decomposition without pivoting' lw 2,"./dpotrf" with lines title 'Cholesky' lw 2
   