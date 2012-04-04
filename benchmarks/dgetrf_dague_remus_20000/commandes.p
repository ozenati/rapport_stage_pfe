set xlabel "Matrix Size"
set ylabel "GFlops"
set key top
set boxwidth 10
plot "./dgetrf_sp_nb_best"  using 1:2 title 'static pivoting' with boxes, "./dgetrf_nb_best"  using 1:2 title 'partial pivoting' with boxes
   