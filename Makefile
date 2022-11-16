FC = gfortran

all:
	$(FC) -c foo.f90
	$(FC) -c baz.f90
	$(FC) -c bar.f90
	$(FC) assoc.f90 -o assoc baz.o bar.o foo.o

clean:
	rm -f assoc *.o *.mod *.smod
