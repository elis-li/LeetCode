  String convertToTitle(int columnNumber) {

    if (columnNumber < 27){
      String letter = String.fromCharCode(64 + columnNumber);
      return letter;
    }
    int first = columnNumber ~/ 26;
    String firstLetter = String.fromCharCode(64 + first); 
    int second = columnNumber % 26;
    String secondLetter = String.fromCharCode(64 + second);
    String title = firstLetter + secondLetter;
    return title;
  }
  void main(){
    print(convertToTitle(28));
  }