void main() {
  List<int> nums = [2,0,2,1,1,0];
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

