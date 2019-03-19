#include <iostream>
#include <chrono>

#define MAX_ITER 10000000

int main(int argc, char** argv) {
  static int a[MAX_ITER];
  static int b[MAX_ITER];
  auto sum = 0;

  {
    auto start = std::chrono::system_clock::now();

    for (int i=0; i<MAX_ITER; ++i) {
      *(a+i) = *(b+i);
      __asm __volatile("");
    }

    auto end = std::chrono::system_clock::now();

    double elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(end-start).count();

    std::cout << "elapsed(normal): " << std::endl
	      << "    "              << elapsed << std::endl;

  }
  sum += a[0];

  {
    auto start = std::chrono::system_clock::now();

    // not overrun
    int tmp_b = b[0];
    for (int i=1; i<MAX_ITER; ++i) {
      *(a+i-1) = tmp_b;
      tmp_b = *(b+i);
      __asm __volatile("");
    }
    *(a+MAX_ITER-1) = tmp_b;

    auto end = std::chrono::system_clock::now();

    auto elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(end-start).count();

    std::cout << "elapsed(classical swp): " << std::endl
	      << "    "                     << elapsed << std::endl;

  }
  sum += a[0];

  return sum;
}
