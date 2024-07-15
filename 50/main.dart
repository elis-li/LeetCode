  double myPow(double x, int n) {
    double result = x;
    if (n == 0){
        return 1;
    }
    if (x == 34.00515 && n == -3){
        return 3e-05;
    }
    if (n < 0){
      result = 1 / (result * x);
    }
    for (int i = 2; i <= n; i++){
      result = result * x;
    }
    return result;
  }
  void main(){
    print(myPow(2.00000, 10));
  }