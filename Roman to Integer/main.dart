
  int romanToInt(String s) {
    int result = 0;
    
while (s.startsWith('M')){
result += 1000;
s = s.replaceFirst('M','');
}
while (s.startsWith('CM')){
result += 900;
s = s.replaceFirst('CM','');
}
while (s.startsWith('D')){
  result += 500;
s = s.replaceFirst('D','');
}
while (s.startsWith('CD')){
  result += 400;
s = s.replaceFirst('CD','');
}
while (s.startsWith('C')){
  result += 100;
s = s.replaceFirst('C','');
}
while (s.startsWith('XC')){
  result += 90;
s = s.replaceFirst('XC','');
}
while (s.startsWith('L')){
  result += 50;
s = s.replaceFirst('L','');
}
while (s.startsWith('XL')){
  result += 40;
s = s.replaceFirst('XL','');
}
while (s.startsWith('X')){
  result += 10;
s = s.replaceFirst('X','');
}
while (s.startsWith('IX')){
  result += 9;
s = s.replaceFirst('IX','');
}
while (s.startsWith('V')){
  result += 5;
s = s.replaceFirst('V','');
}
while (s.startsWith('IV')){
  result += 4;
s = s.replaceFirst('IV','');
}
while (s.startsWith('I')){
  result += 1;
s = s.replaceFirst('I','');
}
return result;
}
void main(){
  print(romanToInt(("MCMXCIV")));
}