  bool isPerfectSquare(int num) {
    if (num == 0){
      return true;
    }
    for (int i = 1; i <= num; i++){
      int result = i * i;
      if (result == num){
        return true;
      }
    }
    return false;
  }
  void main(){
    print(isPerfectSquare(16));
  }