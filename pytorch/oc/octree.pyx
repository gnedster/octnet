cimport oc

def is_octree(t):
	return isinstance(t, Octree)

def write_dense_to_bin(path, dense)
  raise NotImplementedError

def read_dense_from_bin(path, dense)
  raise NotImplementedError

def read_dense_from_bin_batch(paths, dense, n_threads):
  raise NotImplementedError

def free_octree_gpu(obj):
  raise NotImplementedError

def oc_cuda_gc_wrapper(obj):
  raise NotImplementedError

def free_octree_cpu(obj):
  raise NotImplementedError

def oc_float_gc_wrapper(obj):
  raise NotImplementedError

class Octree:
  def __init__(self, oc_type):
    self._type = oc_type

    if self._type == 'oc_float':
      self.grid = oc_float_gc_wrapper(oc.cpu.octree_new_cpu())
    elif self._type == 'oc_cuda':
      self.grid = oc_cuda_gc_wrapper(oc.gpu.octree_new_gpu())
    else:
      raise ValueError('invalid type for octree', oc_type)
    end

class FloatOctree(Octree):
  def __init__(self):
    super(FloatOctree, self).__init__('oc_float')

  def write(self):
    raise NotImplementedError

  def read(self, file):
    raise NotImplementedError

  def set(self, other):
    raise NotImplementedError

  def apply(self, fcn):
    raise NotImplementedError

  def create_from_dense(self, array):
    raise NotImplementedError

  def equals(self, other, eps, debug):
    raise NotImplementedError

  def clr_trees(self):
    raise NotImplementedError

  def tree_isset_bit(self, grid_idx, pos):
    raise NotImplementedError

  def tree_set_bit(self, grid_idx, pos):
    raise NotImplementedError

  def tree_unset_bit(self, grid_idx, pos):
    raise NotImplementedError

  def tree_n_leafs(self, grid_idx):
    raise NotImplementedError

  def tree_data_idx(self, grid_idx, bit_idx):
    raise NotImplementedError

  def leaf_idx_to_grid_bit_idx(self, leaf_idx):
    raise NotImplementedError

  def depth_from_bit_idx(self, bit_idx):
    raise NotImplementedError

  def split_grid_idx(self, grid_idx):
    raise NotImplementedError

  def dense_offset(self, grid_idx, bit_idx):
    raise NotImplementedError

  def tree_bit_string(self, grid_idx):
    raise NotImplementedError

  def print(self):
    raise NotImplementedError

  def data(self):
    raise NotImplementedError

  def cpy_data(self, tensor):
    raise NotImplementedError

  def cuda(self, other):
    raise NotImplementedError

  