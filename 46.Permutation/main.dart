class Solution{
  List<List<int>> permute(List<int> nums) {
    List<List<int>> results = [];
    _backtrack(nums, [], results);
    return results;
  }
  void _backtrack(List<int> nums , List<int>path, List<List<int>> results){
    if (path.length == nums.length){
      results.add(List.from(path));
      return;
    }
    for (int i = 0; i < nums.length; i++){
      if (path.contains(nums[i])) continue;
      path.add(nums[i]);
      _backtrack(nums, path, results);
      path.removeLast();
    }
  }
}
  void main(){
    Solution sol = Solution();
    List<int> nums = [1, 2, 3];
    print(sol.permute(nums));
  }