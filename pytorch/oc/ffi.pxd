################################################################################
## TH functions
################################################################################
ffi.cdef[[
  void* THAlloc(long size);
  void THFloatStorage_free(THFloatStorage* storage);
]]
