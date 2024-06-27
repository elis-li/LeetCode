
int addDigits(int num) {
  int sum = 0;
  List<int> digits = num.toString().split('').map(int.parse).toList();
    do {
       sum = digits.reduce((value, element) => value + element);
       digits = sum.toString().split('').map(int.parse).toList();
    }
    while (digits.length > 1);
return sum;
  }

  void main(){
    print(addDigits(38));
  }