class SearchResult {
  bool exists;
  int steps;

  SearchResult(this.exists, this.steps);
}

SearchResult searchElementIn2D(List<List<dynamic>> array2D, dynamic target) {
  int steps = 0;
  for (int i = 0; i < array2D.length; i++) {
    print("Row $i: ${array2D[i]}");

    for (int j = 0; j < array2D[i].length; j++) {
      print("Nested Loop $j: ${array2D[i][j]}");

      steps++; // Increment step for each element checked
      if (array2D[i][j] == target) {
        return SearchResult(true, steps);
      }
    }
  }
  return SearchResult(false, steps);
}

void main() {
  List<List<int>> array2D = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];
  int target = 5;

  SearchResult result = searchElementIn2D(array2D, target);
  if (result.exists) {
    print(
        "The element $target exists in the array. Steps taken: ${result.steps}");
  } else {
    print(
        "The element $target does not exist in the array. Steps taken: ${result.steps}");
  }
}
