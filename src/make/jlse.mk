######################################################################
# Compiler definitions for Linux systems
# Setup should work for Ubuntu systems with ATLAS and OpenMPI installed
CXX:=mpicxx -fopenmp 
CXX_SERIAL:=g++

CXXFLAGS := -O2  
CXXFLAGS += -DUSE_MPI -DUSE_BLAS -DUSE_LAPACK  ${INCLUDEPATH}

LAPACK_LIBS :=  -Wl,--no-as-needed -lmkl_scalapack_lp64 -lmkl_gf_lp64 -lmkl_core -lmkl_gnu_thread -lmkl_blacs_intelmpi_lp64 -lpthread -lm -ldl
LAPACK_INCLUDE := 

BLAS_LIBS :=  $(LAPACK_LIBS) 
BLAS_INCLUDE := $(LAPACK_INCLUDE) 

DEBUG:= -Wall -DNO_RANGE_CHECKING -DNDEBUG   -D__USE_GNU -DDEBUG_WRITE
LDFLAGS:= 

######################################################################
# This is the invokation to generate dependencies
DEPENDMAKER:=g++ -MM  $(INCLUDEPATH)

