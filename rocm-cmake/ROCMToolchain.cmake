# where is the target environment
set(CMAKE_FIND_ROOT_PATH ${CMAKE_INSTALL_PREFIX})

# specify the cross compiler
set(CMAKE_C_COMPILER ${CMAKE_INSTALL_PREFIX}/llvm/bin/clang)
set(CMAKE_CXX_COMPILER ${CMAKE_INSTALL_PREFIX}/llvm/bin/clang++)

# for libraries and headers in the target directories
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# should fix this upstream
set(Clang_DIR ${CMAKE_INSTALL_PREFIX}/llvm/lib/cmake/clang)
set(LLVM_DIR ${CMAKE_INSTALL_PREFIX}/llvm/lib/cmake/llvm)
