  bool isUgly(int n) {
    if (n <= 0) {
      return false;
    }
    List<int> factors = [2, 3, 5];
    for (int factor in factors) {
      while (n % factor == 0) {
        n ~/= factor;
      }
    }
    return n == 1;
  }
  void main(){
    print(isUgly(14));
  }