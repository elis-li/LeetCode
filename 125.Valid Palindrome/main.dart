bool isPalindrome(String s) {
    s = s.toLowerCase();
RegExp regExp = RegExp(r'[^\w\s]');
String sClear = s.replaceAll(regExp, '');
String ssClear = sClear.replaceAll(' ','');
String ssTrue = ssClear.replaceAll('_','');
String reversedTrueS = ssTrue.split('').reversed.join('');
if (reversedTrueS == ssTrue){
  return true;
}
else return false;
  }
void main(){
  print(isPalindrome("A man, a plan, a canal: Panama"));
}
