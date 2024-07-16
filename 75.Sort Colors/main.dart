void main() {
  List<int> nums = [2,5,1,3,0,4,8];
    bool swapped;
    do {
        swapped = false;
        for (int i = 0; i < nums.length - 1; i++) {
            if (nums[i] > nums[i + 1]) {
                int temp = nums[i];
                nums[i] = nums[i + 1];
                nums[i + 1] = temp;
                swapped = true;
            }
        }
  } while (swapped);
  print(nums);
  }

