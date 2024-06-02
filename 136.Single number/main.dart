  int singleNumber(List<int> nums) {
    
    Set<int> original = {};
    Set <int> duplicates = {};

    for (var num in nums){
      if (!original.add(num)){
        duplicates.add(num);
      }
    }
    for (var num in original){
      if (!duplicates.contains(num)){
        return num;
      }
    }
    return -1;
  }

  void main(){
    print(singleNumber([2,2,1]));
  }