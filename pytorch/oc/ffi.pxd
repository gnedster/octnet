################################################################################
## Octree CPU
################################################################################

cdef extern from io.h:
  void octree_read_batch_cpu(int n_paths, const char** paths, int n_threads, octree* grid_h);
