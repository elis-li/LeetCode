List<String> sortPeople(List<String> names, List<int> heights) {
    List <MapEntry<String, int>> people = [] ;
    for (int i = 0 ; i < names.length ; i ++ ) {
        people.add (MapEntry (names[i], heights[i])) ;
        
    }
    people.sort ((a,b) => b.value.compareTo(a.value)) ;
List <String> sortedNames = [] ;
for (var person in people) {
    sortedNames.add(person.key) ;

}
return sortedNames ;
  }
  void main () {
    List <String> names = [ "Mary" , "John" , "Emma"] ;
    List <int> heights = [ 180 , 165, 170 ] ;
    List <String> sortedNames = sortPeople (names, heights) ;
    print (sortedNames) ;
    
  }