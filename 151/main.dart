  String reverseWords(String s) {
    String reversed = s.split(' ').reversed.join(' ');
    String result = reversed.trim().replaceAll(RegExp(r'\s+'), ' ');
    return result;
  }
  void main(){
    print(reverseWords("  hello world  "));
  }