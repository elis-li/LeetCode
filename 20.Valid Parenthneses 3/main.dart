bool isValid(String s) {
  List<String> stack = [];
  Map<String, String> matchingBrackets = {
    ')': '(',
    ']': '[',
    '}': '{'
  };

  for (String char in s.split('')) {
    if (matchingBrackets.values.contains(char)) {
      stack.add(char);
    } else if (matchingBrackets.keys.contains(char)) {
      if (stack.isEmpty || stack.last != matchingBrackets[char]) {
        return false;
      }
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}

void main() {
  print(isValid("(([]){)")); 
}