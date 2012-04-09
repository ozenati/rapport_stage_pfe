set xlabel "Matrix Size"
set ylabel "GFlops"
set logscale x
set key bottom
plot 7.6 with lines title 'Theoritical limit' lw 2 lc rgb "black", "./plot_exp_dgetrf_sp_rec" with lines title 'recursive' lw 2,"./plot_exp_dgetrf_sp_128" with lines title '128' lw 2,"./plot_exp_dgetrf_sp_64" with lines title '64' lw 2,"./plot_exp_dgetrf_sp_32" with lines title '32' lw 2,"./plot_exp_dgetrf_sp_16" with lines title '16' lw 2
   
