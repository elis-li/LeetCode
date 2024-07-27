  List<int> findDuplicates(List<int> nums) {
    List<int> duplicates = [];
    Set<int> originals = {};
    for (int i = 0; i <= nums.length - 1; i++){
      if (!originals.contains(nums[i])){
        originals.add(nums[i]);
      } else
      duplicates.add(nums[i]);
    }
    return(duplicates);
  }

  void main(){
    print(findDuplicates([4,3,2,7,8,2,3,1]));
  }