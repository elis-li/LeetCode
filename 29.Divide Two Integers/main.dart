  int divide(int dividend, int divisor) {
    if (dividend == -2147483648 && divisor == -1){
      return 2147483647;
    }
    int num = dividend ~/ divisor;
    return num;
  }
  void main(){
    print(divide(7, -3));
  }