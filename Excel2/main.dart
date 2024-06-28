String convertToTitle(int columnNumber) {
  StringBuffer result = StringBuffer();
  
  while (columnNumber > 0) {
    columnNumber--; 
    int remainder = columnNumber % 26;
    result.write(String.fromCharCode(65 + remainder)); 
    columnNumber = columnNumber ~/ 26;
  }
  
  return result.toString().split('').reversed.join('');
}

void main(){
  print(convertToTitle(704));
}