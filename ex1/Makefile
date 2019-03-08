all : a.out test.s

clean : 
	rm -fr a.out test.s *~

a.out:
	clang++ -Ofast -march=native -fopenmp -std=c++11 test.cpp

test.s:
	clang++ -Ofast -march=native -fopenmp -std=c++11 test.cpp -S
