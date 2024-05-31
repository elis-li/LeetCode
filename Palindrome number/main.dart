bool isPalindrome(int x) {
    var originalNumber = x.toString();
    var reversedNumber = originalNumber.split('').reversed.join();
    if (originalNumber == reversedNumber){
        return true ;
    } else {
        return false ;
    } 
  }

  void main(){
    print(isPalindrome(121));
  }
