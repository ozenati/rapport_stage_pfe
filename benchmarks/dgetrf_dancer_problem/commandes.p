set title "Dancer: 16*8 cores E5520, IB 20Gbs, Intel MKL"
set xlabel "Matrix Size"
set ylabel "GFlops"
set key bottom
set grid
set xrange [0:50000]
set yrange [0:1300]
set terminal postscript eps noenhanced defaultplex leveldefault monochrome colortext solid dashlength 1.0 linewidth 1.0 butt palfuncparam 2000,0.003 "Helvetica" 14
set output "dgetrf_update_problem.eps"
plot 1190.4 with lines title 'GEMM PEAK' lw 2 lc rgb "black", "./dgetrf_sp_final" with lines title 'Static pivoting' lw 2 lc rgb "green", "./dgetrf_std_final" with lines title 'Static pivoting + update' lw 2 lc rgb "orange"