#include <iostream>
#include <chrono>
#include <omp.h>

#define MAX_ITER 10000000
#define NUM_FMA  14

int main(int argc, char** argv) {
  auto start = std::chrono::system_clock::now();

#pragma omp parallel for
  for (int i=0; i<MAX_ITER; ++i) {
    __asm __volatile("vfmadd213pd %ymm0, %ymm0, %ymm0");
    __asm __volatile("vfmadd213pd %ymm1, %ymm1, %ymm1");
    __asm __volatile("vfmadd213pd %ymm2, %ymm2, %ymm2");
    __asm __volatile("vfmadd213pd %ymm3, %ymm3, %ymm3");
    __asm __volatile("vfmadd213pd %ymm4, %ymm4, %ymm4");
    __asm __volatile("vfmadd213pd %ymm5, %ymm5, %ymm5");
    __asm __volatile("vfmadd213pd %ymm6, %ymm6, %ymm6");
    __asm __volatile("vfmadd213pd %ymm0, %ymm0, %ymm0");
    __asm __volatile("vfmadd213pd %ymm1, %ymm1, %ymm1");
    __asm __volatile("vfmadd213pd %ymm2, %ymm2, %ymm2");
    __asm __volatile("vfmadd213pd %ymm3, %ymm3, %ymm3");
    __asm __volatile("vfmadd213pd %ymm4, %ymm4, %ymm4");
    __asm __volatile("vfmadd213pd %ymm5, %ymm5, %ymm5");
    __asm __volatile("vfmadd213pd %ymm6, %ymm6, %ymm6");
  }

  auto end = std::chrono::system_clock::now();

  double elapsed = std::chrono::duration_cast<std::chrono::nanoseconds>(end-start).count();

  std::cout << "elapsed: " << std::endl
	    << "    "      << elapsed << std::endl
	    << "GFLOPS: "  << std::endl
	    << "    "      << MAX_ITER * NUM_FMA * 4 * 2 / elapsed << std::endl;

  return 0;
}
