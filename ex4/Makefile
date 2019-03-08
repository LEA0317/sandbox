all : a.out test.s

clean : 
	rm -fr a.out test.s *~

a.out:
	clang++ test.S

test.s:
	clang++ -Ofast -march=native -std=c++11 test.cpp -S
