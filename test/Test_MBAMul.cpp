// test_mul_by_2.c

int test_mul_by_two(int x) {
  return x * 2;
}

int test_mul_by_two_var(int x, int y) {
  return x * y * 2;
}

int test_no_mul(int x) {
  return x + 2;
}

int test_edge_case_zero(int x) {
  return x * 0 * 2;
}

int test_large_number(int x) {
  return x * 1000000 * 2;
}

int test_negative(int x) {
  return x * -2;
}

int main() {
  int a = 10;
  int b = test_mul_by_two(a);
  int c = test_mul_by_two_var(a, 3);
  int d = test_no_mul(a);
  int e = test_edge_case_zero(a);
  int f = test_large_number(a);
  int g = test_negative(a);
  return b + c + d + e + f + g;
}
