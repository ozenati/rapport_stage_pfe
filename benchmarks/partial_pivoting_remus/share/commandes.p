set title "Remus: 48 cores , Intel MKL"
set xlabel "Matrix Size"
set ylabel "GFlops"
set key bottom
plot 480 with lines title 'Theoritical limit' lw 2 lc rgb "black", "./dgetrf_sp" with lines title 'Without pivoting' lw 2,"./dgetrf_fusion" with lines title 'partial pivoting' lw 2,"./dgetrf" with lines title 'hyper threaded' lw 2,"./dgetrf_incpiv" with lines title 'incremental pivoting' lw 2
   