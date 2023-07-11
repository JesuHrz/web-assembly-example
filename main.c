char hello() {
  return "Hello World";
}

int sum(int n1, int n2) {
  int result = n1 + n2;
  return result;
}

int fibonacci(int n) {
  if (n <= 1)
    return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}
