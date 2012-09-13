set title "LU decomposition with partial pivoting on 16 nodes of 8 cores "
set xlabel "Matrix Size"
set ylabel "GFlops"
set key bottom
plot 1162.24 with lines title 'Theoritical limit' lw 2 lc rgb "black", "./dgetrf_sp_problem" with lines title 'LU decomposition without pivoting' lw 2, "./dgetrf_fusion_1d_problem" with lines title '1D cyclic' lw 2, "./dgetrf_fusion_2_8_problem" with lines title '2D cyclic (2*8)' lw 2, "./dgetrf_fusion_problem" with lines title '2D cyclic (4*4)' lw 2