List<String> findWords(List<String> words) {
  List<String> row1 = "qwertyuiop".split('');
  List<String> row2 = "asdfghjkl".split('');
  List<String> row3 = "zxcvbnm".split('');

  List<String> result = [];

  for (String word in words) {
    String origWord = word.toLowerCase();
    if (origWord.split('').every((char) => row1.contains(char)) ||
        origWord.split('').every((char) => row2.contains(char)) ||
        origWord.split('').every((char) => row3.contains(char))) {
      result.add(word);
    }
  }

  return result;
}
  
  void main(){
    print(findWords(["Hello","Alaska","Dad","Peace"]));
  }