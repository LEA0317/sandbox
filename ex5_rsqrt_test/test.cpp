extern "C"{
  float sqrt(float);
}

int main(int argc, char** argv) {
  return (int)sqrt((float)argc);
}
