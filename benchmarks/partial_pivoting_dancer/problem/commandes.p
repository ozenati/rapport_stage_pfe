set title "Dancer: 16*8 cores, IB 20Gbs, Intel MKL "
set xlabel "Matrix Size"
set ylabel "GFlops"
set key bottom
plot 1190.4 with lines title 'GEMM PEAK' lw 2 lc rgb "black", "./dgetrf_sp_final" with lines title 'Without pivoting' lw 2 lc rgb "green", "./dgetrf_incpiv_final" with lines title 'Incremental pivoting' lw 2 lc rgb "blue", "./dgetrf_fusion_final" with lines title 'Partial pivoting' lw 2 lc rgb "red"

# , 1041.6 with lines title '' lw 2 lt -2 lc rgb "black"
# 1162.24 with lines title 'Theoritical limit' lw 2 lc rgb "black"