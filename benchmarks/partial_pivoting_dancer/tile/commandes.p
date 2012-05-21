set title "LU decomposition with partial pivoting on 16 nodes of 8 cores on matrix of size 6000"
set xlabel "Tile Size"
set ylabel "GFlops"
set key top
set boxwidth 10
plot "./dgetrf_fusion_tile_2"  using 1:2 title "Distribution 2*8 " with boxes, "./dgetrf_fusion_tile"  using 1:2 title "Distribution 4*4 " with boxes
   