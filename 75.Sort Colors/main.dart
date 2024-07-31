void main() {
  List<int> nums = [4, 1, 5, 6, 6, 3];
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

