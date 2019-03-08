#include <iostream>
#include <chrono>

#define MAX_ITER 10000000
#define INVALID_NUM 10

int main(int argc, char** argv) {
  auto start = std::chrono::system_clock::now();

  for (int i=0; i<MAX_ITER; ++i) {
    if (argc == INVALID_NUM) {
      i+=9;
    }
    __asm __volatile("");
  }

  auto end = std::chrono::system_clock::now();

  double elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(end-start).count();

  std::cout << "elapsed: "     << std::endl
	    << "    "          << elapsed << std::endl
	    << "throughput: "  << std::endl
	    << "    "          << elapsed * 10 * 3 / (MAX_ITER * 2) << std::endl;

  return 0;
}
