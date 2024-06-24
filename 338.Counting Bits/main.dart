List<int> countBits(int n) {
  List<int> bits = List.filled(n + 1, 0);  
  for (int i = 1; i <= n; i++) {
    bits[i] = bits[i >> 1] + (i & 1);  
  }
  return bits;
}
void main(){
  print(countBits(5));
}