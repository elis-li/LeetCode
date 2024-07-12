  List<int> intersection(List<int> nums1, List<int> nums2) {
    Set<int> nums = {};
    for (int i = 0; i <= nums1.length - 1; i++ ){
      if (nums2.contains(nums1[i])){
        nums.add(nums1[i]);
      }
    }
    List<int> numsSimilar = nums.toList();
    return numsSimilar;
  }
  void main(){
    print(intersection([1], [1]));
  }