set title "Dancer: 16*8 cores E5520, IB 20Gbs, Intel MKL"
set xlabel "Matrix Size"
set ylabel "GFlop/s"
set key bottom
set grid
set xrange [0:50000]
set yrange [0:1300]
#set label 1 at 15000,150 "Solid = 8 cores/node"
#set label 2 at 15000,100 "Dashed = 7 cores/node"
set terminal postscript eps enhanced color
set output "gepp.eps"
plot 1190.4 with lines title 'GEMM PEAK' lt 1 lw 2 lc rgb "black",\
   "./dgetrf_sp_final" with lp title 'Without pivoting A=LU' lt 1 lw 2 lc rgb "green",\
      "./dgetrf_fusion_4_4_ap_c7" with lp title 'Partial pivoting PA=LU' lt 1 lw 2 lc rgb "red",\
	    "./scalapack_problem" with lp title 'Scalapack' lt 1 lw 2 lc rgb "magenta"



#   1041.6 with lines title '' lw 2 lt 2 lc rgb "black",\
   #      "./dgetrf_incpiv_final" with lp title 'Incremental pivoting' lt 1 lw 2 lc rgb "blue",\
      #	       -12  with lp title 'Partial pivoting' lt 1 lw 2 lc rgb "red"