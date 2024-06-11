  int missingNumber(List<int> nums) {
    nums.sort();
    for (int i = 1; i < nums.length; i++){
      if (nums[i] - nums[i-1] > 1){
        return(nums[i-1] + 1);
      }
    }
    if (nums[0] != 0){
      return 0;
    }
    return nums[nums.length - 1] + 1;
  }

  void main(){
    print(missingNumber([3,0,1]));

  }