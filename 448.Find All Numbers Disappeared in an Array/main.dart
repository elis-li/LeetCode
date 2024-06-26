  List<int> findDisappearedNumbers(List<int> nums) {
    List<int> deleted = [];
    Set<int> numsSet = nums.toSet();
    for (int i = 1; i <= nums.length; i++){
      if (!numsSet.contains(i)){
        deleted.add(i);
      }
    }
    return deleted;
  }
  void main(){
    print(findDisappearedNumbers([4,3,2,7,8,2,3,1]));
  }