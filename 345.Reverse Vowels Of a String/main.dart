  String reverseVowels(String s) {
    Set<String> vowels = {'a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U'};
    List<String> word = s.split('');
    int left = 0;
    int right = word.length - 1;
    while (left < right){
      while (left < right && !vowels.contains(word[left])){
        left ++ ;
      }
      while (left < right && !vowels.contains(word[right])){
        right --;
      }
      String temp = word[left];
      word[left] = word[right];
      word[right] = temp;
      left ++;
      right --;
    }
    return word.join('');
  }
  void main(){
    print(reverseVowels('leetcode'));
  }