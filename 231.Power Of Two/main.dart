bool isPowerOfTwo(int n) {
  int result = 1;
  int isPower = 2;
  if (n == 1){
    return true;
  }
  do{
    result = result * isPower;
  } while (result < n);
  if (result == n) {
    return true;
  } else 
    return false;

}
  void main(){
    print(isPowerOfTwo(1));
  } 