set title "Dancer: 16*8 cores E5520, IB 20Gbs, Intel MKL"
set xlabel "Matrix Size"
set ylabel "GFlops"
set key bottom
set grid
set xrange [0:50000]
set yrange [0:1300]
set label 1 at 15000,150 "Solid = 8 cores/node"
set label 2 at 15000,100 "Dashed = 7 cores/node"
set terminal postscript eps enhanced color
#defaultplex leveldefault monochrome colortext solid dashlength 1.0 linewidth 1.0 butt palfuncparam 2000,0.003 "Helvetica" 14
set output "partial_pivoting_problem.eps"
plot 1190.4 with lines title 'GEMM PEAK' lt 1 lw 2 lc rgb "black",\
     1041.6 with lines title '' lw 2 lt 2 lc rgb "black",\
     "./dgetrf_sp_final" with lines title 'Without pivoting' lt 1 lw 2 lc rgb "green",\
	"./dgetrf_incpiv_final" with lines title 'Incremental pivoting' lt 1 lw 2 lc rgb "blue",\
	   "./dgetrf_fusion_final" with lines title '' lt 2 lw 2 lc rgb "red",\
	      		 -12  with lines title 'Partial pivoting' lt 1 lw 2 lc rgb "red",\
	      "./scalapack_problem" with lines title 'Scalapack' lt 1 lw 2 lc rgb "magenta"
   
# 
# 1162.24 with lines title 'Theoritical limit' lw 2 lc rgb "black"