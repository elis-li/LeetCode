void main() {
  String a = "11";
  String b = "1";

   if (a == '0' && b == '0'){
        print ('0');
    }
    List<String> firstBinary = a.split('');
    List<String> secondBinary = b.split('');

    while (firstBinary.length > secondBinary.length) {
      secondBinary.insert(0, '0');
    }
    while (secondBinary.length > firstBinary.length) {
      firstBinary.insert(0, '0');
    }

    List<int> result = List.filled(firstBinary.length + 1, 0);

    int carry = 0;
    for (int i = firstBinary.length - 1; i >= 0; i--) {
      int bit1 = int.parse(firstBinary[i]);
      int bit2 = int.parse(secondBinary[i]);

      int sum = bit1 + bit2 + carry;
      result[i + 1] = sum % 2;
      carry = sum ~/ 2;
    }
    result[0] = carry;

    String resultString = result.join();
    if (resultString[0] == '0') {
      resultString = resultString.substring(1);
    }

    print (resultString);
}
