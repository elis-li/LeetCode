  bool isPowerOfFour(int n) {
    int result = 1;
    if (n == 1){
      return true;
    }
    do {
      result = result * 4;
    } while (result < n);
    if (result == n){
      return true;
    }
    return false;
  }
  void main(){
    print(isPowerOfFour(0));
  }