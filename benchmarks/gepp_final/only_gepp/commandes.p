set title "Dancer: 16*8 cores E5520, IB 20Gbs, Intel MKL"
set xlabel "Matrix Size"
set ylabel "GFlop/s"
set key bottom
set grid
set xrange [0:65000]
set yrange [0:1300]
set terminal postscript eps enhanced color
set output "only_gepp.eps"
plot 1190.4 with lines title 'GEMM PEAK' lt 1 lw 2 lc rgb "black",\
   "./dgetrf_fusion_4_4_ap_c7" with lp title '4*4 AP c=7' lt 1 lw 2 lc rgb "red",\
      "./dgetrf_fusion_2_8_ap_c7" with lp title '2*8 AP c=7' lt 1 lw 2 lc rgb "yellow",\
	 "./dgetrf_fusion_4_4_c7" with lp title '4*4 c=7' lt 1 lw 2 lc rgb "coral",\
	    "./dgetrf_fusion_2_8_c7" with lp title '2*8 c=7' lt 1 lw 2 lc rgb "brown",\
	       "./dgetrf_fusion_4_4" with lp title '4*4 c=8' lt 1 lw 2 lc rgb "magenta",\
		  "./dgetrf_fusion_2_8" with lp title '2*8 c=8' lt 1 lw 2 lc rgb "blue",\
		     "./dgetrf_fusion_4_4_ap" with lp title '4*4 AP' lt 1 lw 2 lc rgb "cyan"

