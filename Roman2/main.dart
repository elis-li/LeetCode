integers(String s){
int result = 0;
Map<String, int> romanMap = {'M': 1000, 'CM': 900,  'D': 500, 'CD': 400,  'C': 100, 'XC': 90, 'L': 50, 'XL': 40, 'X': 10, 'IX': 9, 'V': 5, 'IV': 4, 'I': 1 };
for (String key in romanMap.keys){
  while(s.startsWith(key)){
    result += romanMap[key]!;
s = s.replaceFirst(key,'');
  } 
}
return result;
}

void main(){
print (integers("MCMXCIV"));
}