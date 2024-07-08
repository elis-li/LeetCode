  double myPow(double x, int n) {
    double result = x;
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