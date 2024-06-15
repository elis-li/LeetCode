  bool isHappy(int n) {
    List<int> digits = [];
    String nStr = '';
    nStr = n.toString();
    do {
      for (int i = 0; i < nStr.length; i++ ){
      digits.add(int.parse(nStr[i]));
      }
      int result = 0;
      for (int i = 0; i < digits.length; i++){
        result += digits[i] * digits[i];
      }
      n = result;
      digits.removeRange(0, digits.length);
      nStr = n.toString();
    } 
    while (nStr.length != 1);
    if (n == 1){
      return true;
    }
    if (n == 7){
      return true;
    }
    return false;
  }

  void main(){
    print(isHappy(3));
  }