List<List<int>> generate(int numRows) {
  List<List<int>> triangle = [];

  for (int i = 0; i < numRows; i++) {
    List<int> row = List<int>.filled(i + 1, 1);

    for (int j = 1; j < i; j++) {
      row[j] = triangle[i - 1][j - 1] + triangle[i - 1][j];
    }

    triangle.add(row);
  }

  return triangle;
}

void main() {
  int numRows = 5;
  List<List<int>> result = generate(numRows);
  for (var row in result) {
    print(row);
  }
}