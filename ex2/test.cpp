#include <iostream>
#include <chrono>

#define MAX_ITER 10000000

int main(int argc, char** argv) {
  auto start = std::chrono::system_clock::now();

  for (int i=0; i<MAX_ITER; ++i) {
    __asm __volatile("nop");
  }

  auto end = std::chrono::system_clock::now();

  double elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(end-start).count();

  std::cout << "elapsed: "     << std::endl
	    << "    "          << elapsed << std::endl
	    << "throughput: "  << std::endl
	    << "    "          << elapsed * 3 / MAX_ITER << std::endl;

  return 0;
}
