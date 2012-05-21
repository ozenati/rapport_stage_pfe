set title "Strong scalability of LU decomposition with partial pivoting on matrix of size 30000"
set xlabel "Number of nodes of 8 cores"
set ylabel "GFlops"
set key bottom
plot  x*2.7*4*8 with lines title 'Theoritical limit' lw 2 lc rgb "black", "./dgetrf_fusion_strong" with lines title 'LU decomposition with partial pivoting' lw 2
   