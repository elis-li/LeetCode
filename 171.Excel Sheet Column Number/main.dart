int titleToNumber(String columnTitle) {
  int result = 0;
  for (int i = 0; i < columnTitle.length; i++){
    result = result * 26 + (columnTitle.codeUnitAt(i) - 'A'.codeUnitAt(0) + 1);
  }
  return result;
}  
void main(){
print(titleToNumber('ZY'));
}