all : a.out test.s

clean : 
	rm -fr a.out test.s test.ll *~

a.out:
	clang++ -Ofast -march=native -std=c++11 test.cpp

test.s:
	clang++ -Ofast -march=native -std=c++11 test.cpp -emit-llvm -S
	llc -O3 test.ll -time-passes
