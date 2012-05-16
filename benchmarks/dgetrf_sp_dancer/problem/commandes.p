set xlabel "Matrix Size"
set ylabel "GFlops"
set key bottom
plot 1162.24 with lines title 'Theoritical limit' lw 2 lc rgb "black", "./dgetrf_sp_problem" with lines title 'LU decomposition without pivoting' lw 2, "./dpotrf_problem" with lines title 'cholesky' lw 2
