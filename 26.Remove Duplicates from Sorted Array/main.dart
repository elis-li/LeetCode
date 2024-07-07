  int removeDuplicates(List<int> nums) {
 final originalNums =  nums.toSet();
 final uniqueNums = originalNums.toList();
 uniqueNums.sort();
 for (int i = 0; i < uniqueNums.length; i++){
    nums[i] = uniqueNums[i];
 }
 return uniqueNums.length;
  }
  void main(){
    print(removeDuplicates([0,0,1,1,1,2,2,3,3,3]));
  }