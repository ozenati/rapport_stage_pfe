set title "Dancer: 16*8 cores E5520, IB 20Gbs, Intel MKL"
set xlabel "Matrix Size"
set ylabel "GFlop/s"
set key bottom
set grid
set xrange [0:50000]
set yrange [0:1300]
set terminal postscript eps enhanced color
set output "gepp.eps"
plot 1190.4 with lines title 'GEMM PEAK' lt 1 lw 2 lc rgb "black",\
   "./dgetrf_sp_final" with lines title 'Without pivoting' lt 1 lw 2 lc rgb "green",\
      "./dgetrf_incpiv_final" with lines title 'Incremental pivoting' lt 1 lw 2 lc rgb "blue",\
	 "./dgetrf_fusion_4_4_ap_c7" with lines title 'Partial pivoting' lt 1 lw 2 lc rgb "red",\
	    "./scalapack_problem" with lines title 'Scalapack' lt 1 lw 2 lc rgb "magenta"

