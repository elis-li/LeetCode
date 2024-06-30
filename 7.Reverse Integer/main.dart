  int reverse(int x) {
    if (x == 0){
        return 0;
    }
    List<String> original = x.toString().split('').toList();
    if (original.last == '0'){
      original.removeLast();
    }
    if (original.first == '-'){
      original.removeAt(0);
      original.add('-');
    }
    List<String> reversed = original.reversed.toList();
    String reverse = reversed.join().toString();
    int rev = int.parse(reverse);
    if (rev >= 2147483647 || rev <= - 2147483648){
      return 0;
    }
    return rev; 
    }
  void main(){
    print(reverse(-123));
  }