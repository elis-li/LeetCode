 int findComplement(int num) {
    if (num == 0){
      return 1;
    }
    String binary = '';
    while (num > 0){
      int remainder = num % 2;
      binary = remainder.toString() + binary;
      num = num ~/ 2;
    }
    String invertedBinary = '';
    for (int i = 0; i < binary.length; i++){
      if (binary[i] == '0'){
        invertedBinary += '1';
      } else
      if (binary[i] == '1'){
        invertedBinary += '0';
      }
    }
    int decimal = 0;
    for (int i = 0; i < invertedBinary.length; i++) {
      if (invertedBinary[invertedBinary.length - i - 1] == '1') {
        decimal += 1 << i;
      } 
    }
    return decimal;
  }

  void main(){
    print(findComplement(5));
  }