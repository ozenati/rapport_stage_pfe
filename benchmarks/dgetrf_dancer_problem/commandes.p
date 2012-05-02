set xlabel "Matrix Size"
set ylabel "GFlops"
set key bottom
plot 1162.24 with lines title 'Theoritical limit' lw 2 lc rgb "black", "./dgetrf_std_problem" with lines title 'partial pivoting nb = 260' lw 2, "./dgetrf_sp_problem" with lines title 'static pivoting nb = 260' lw 2
