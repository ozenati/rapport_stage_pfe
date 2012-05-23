set title "Dancer: 16*8 cores, IB 20Gbs, Intel MKL "
set xlabel "Matrix Size"
set ylabel "GFlops"
set key bottom
plot 1162.24 with lines title 'Theoritical limit' lw 2 lc rgb "black", "./dgetrf_sp_problem" with lines title 'Without pivoting' lw 2, "./dgetrf_incpiv_problem" with lines title 'Incremental pivoting' lw 2, "./dgetrf_fusion_problem" with lines title 'Partial pivoting' lw 2