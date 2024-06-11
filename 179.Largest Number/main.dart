  String largestNumber(List<int> nums) {
    if (nums.isEmpty){
      return '';
    }
    List<String> numStrings = nums.map((num) => num.toString()).toList();
    numStrings.sort((a, b) => (b + a).compareTo(a + b));
    String result = numStrings.join('');
    if (result[0] == '0'){
      return '0';
    }
    return result;
  }

  void main(){
    print(largestNumber([3,30,34,5,9]));
  }
  