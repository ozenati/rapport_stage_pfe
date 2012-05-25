set title "Dancer: 16*8 cores E5520, IB 20Gbs, Intel MKL"
set xlabel "Matrix Size"
set ylabel "GFlops"
set grid
set yrange [0:1300]
set key bottom
set terminal postscript eps noenhanced defaultplex leveldefault monochrome colortext solid dashlength 1.0 linewidth 1.0 butt palfuncparam 2000,0.003 "Helvetica" 14
set output "dgetrf_sp_problem.eps"
plot 1190.4 with lines title 'GEMM PEAK' lw 2 lc rgb "black", "./dgetrf_sp_problem" with lines title 'LU decomposition without pivoting' lw 2 lc rgb "green", "./dpotrf_problem" with lines title 'cholesky' lw 2 lc rgb "cyan"
