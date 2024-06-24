bool containsDuplicate(List<int> nums) {
  Set<int> original = {};
  Set<int> duplicates = {};
  for (int num in nums){
    if (!original.add(num)){
      (duplicates.add(num));
    }
  }
  if (duplicates.isEmpty) {
    return false;
  } else 
  return true;
  }

  void main(){
    print(containsDuplicate([1,2,3,1]));
  }