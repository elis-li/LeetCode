class Solution {
  int hammingWeight(int n) {
    int count = 0;
    while (n != 0) {
      count += n & 1;  
      n = n >> 1;      
    }
    return count;
  }
}

void main() {
  Solution solution = Solution();
  int n = 11; 
  print(solution.hammingWeight(n)); 
}