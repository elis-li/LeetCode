    int guessNumber(int n) {
      int pickedNumber = 10;
      if (pickedNumber > n){
        return -1;
      }
      if (pickedNumber < n){
        return 1;
      }
      return 0;
    }

    void main(){
      print(guessNumber(6));
    }