#include <iostream>

int fibonacci(int n) {
  if (n == 0 || n == 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

int main(int argc, char** argv) {
  for (int i=1; i<10; i++) {
    std::cout << fibonacci(i) << std::endl;
  }
  return 0;
}
