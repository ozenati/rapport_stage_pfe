set title "LU decomposition without panel pivoting on 16 nodes of 8 cores"
set xlabel "Matrix Size"
set ylabel "GFlops"
set key bottom
plot 1162.24 with lines title 'Theoritical limit' lw 2 lc rgb "black", "./dgetrf_sp_problem" with lines title 'Without update' lw 2, "./dgetrf_std_problem" with lines title 'With update' lw 2
