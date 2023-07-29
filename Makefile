all:
	g++ -c openxlsx.cpp
	gfortran -c xlsx.f90
	gfortran openxlsx.o xlsx.o -o main -lOpenXLSX -lstdc++

clean:
	rm -f main fxlsx.xlsx *.o
