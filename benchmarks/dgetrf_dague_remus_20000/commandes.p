set xlabel "Tile Size on a matrix of size=20000"
set ylabel "GFlops"
set key top
set boxwidth 10
plot "./dgetrf_sp_nb_best"  using 1:2 title 'static pivoting (16)' with boxes,"./dgetrf_std_nb_best"  using 1:2 title 'partial pivoting' with boxes, "./dgetrf_sp_nb_best2_true"  using 1:2 title 'static pivoting (32)' with boxes, "./dgetrf_nb_best"  using 1:2 title 'hyper threaded' with boxes
   