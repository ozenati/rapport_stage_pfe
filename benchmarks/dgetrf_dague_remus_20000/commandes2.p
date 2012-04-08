set xlabel "Tile Size on Matrixe of size=20000"
set ylabel "GFlops"
set key top
set boxwidth 10
plot "./dgetrf_sp_nb_best2_true"  using 1:2 title 'without trace' with boxes, "./dgetrf_sp_nb_best2"  using 1:2 title 'with trace' with boxes
   