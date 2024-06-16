  bool isPowerOfThree(int n) {
    if (n == 1){
      return true;
    }
    int number = 3;
    do{
      number = number * 3;
    }
    while ( number <= n);
    number = number ~/ 3;
    if (number == n){
      return true;
    }
    return false;
  }
  void main(){
    print(isPowerOfThree(4));
  }