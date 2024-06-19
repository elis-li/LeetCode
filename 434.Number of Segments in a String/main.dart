  int countSegments(String s) {
    if (s.isEmpty){
      return 0;
    }
    List<String> sList = s.split(' ').toList();
    List<String> sListWithout = sList.where((str) => str.isNotEmpty).toList();
    return sListWithout.length;
  }
  void main(){
    print(countSegments("       "));
  }