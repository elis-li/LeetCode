int mySqrt(int x) {
     int i;
  int base;
  if (x == 0){
      return(0);
      }
    for (i = 0; i < 100000; i++){
    base = i * i;
    if (base > x){
      break;
    }
        }
    return(i-1);
  }
  void main(){
    print(mySqrt(8));
  }