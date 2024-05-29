

List<int> twoSum(List<int> nums, int target) {
    
Map<int, int> map = {};
for (int i = 0; i < nums.length; i++){
  int num2 = target - nums[i];
if (map.containsKey(num2)){
  return[map[num2]!, i];
}
map[nums[i]] = i;
  }
  return [];
  }
    
  void main(){
    print(twoSum([2,7,11,15], 9));
  }