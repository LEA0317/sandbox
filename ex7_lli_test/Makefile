all : end

clean:
	rm test.ll end *~

end:
	clang++ -Ofast -march=native -std=c++11 test.cpp -fno-use-cxa-atexit -emit-llvm -S
	lli test.ll && touch end
