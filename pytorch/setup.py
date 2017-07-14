from distutils.core import setup
from Cython.Build import cythonize
from distutils.extension import Extension
from Cython.Distutils import build_ext
import numpy as np
import platform

extra_compile_args = ['-msse', '-msse2', '-msse3', '-msse4.2']
extra_link_args = []
if 'Linux' in platform.system():
  print('Added OpenMP')
  extra_compile_args.append('-fopenmp')
  extra_link_args.append('-fopenmp')

setup(
  name='pytorchoctnet',
  version='1.0',
  author='Edward Ng',
  author_email='edjng@stanford.edu',
  cmdclass= {'build_ext': build_ext},
  ext_modules=[
    Extension('pytorchoctnet',
      ['oc/ffi.pxd',
       'oc/octree.pyx',
       '../core/src/core.cpp',
       '../core/src/d2o.cpp',
       '../core/src/o2d.cpp',
       '../core/src/io.cpp',
       '../core/src/gridpool.cpp',
       '../core/src/gridunpool.cpp',
       '../core/src/conv.cpp',
       '../core/src/combine.cpp',
       '../create/src/create.cpp',
       '../create/src/create_dense.cpp',
       '../create/src/create_mesh.cpp',
       '../create/src/create_obj.cpp',
       '../create/src/create_off.cpp',
       '../create/src/create_pc.cpp',
       '../create/src/utils.cpp',
        ],
      language='c++',
      include_dirs=[np.get_include(),
        '../core/include/',
        '../create/include/',
        '../geometry/include/',
        ],
      extra_compile_args=extra_compile_args,
      extra_link_args=extra_link_args
    )
  ]
)


