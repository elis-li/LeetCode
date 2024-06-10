  int majorityElement(List<int> nums) {
    int count = 0;
    int majority = 0;
    for (int num in nums){
      if (count == 0){
        majority = num;
      }
      count += (num == majority) ? 1 : -1;
    }
    return majority;
  }
    
  void main(){
    print(majorityElement([2,2,1,1,1,2,2]));
  }