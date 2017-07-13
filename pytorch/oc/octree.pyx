cimport cython

def is_octree():
	return False

def read_dense_from_bin(path, dense)
  sz = []

  for idx in xrange(dense.nDimension()): 
    sz[dense.size[idx]]

  dims = ffi.new("int[?]", dense.nDimension(), sz)
  cpu.dense_read_prealloc_cpu(path, dense.nDimension(), dims, dense.data())

  return dense