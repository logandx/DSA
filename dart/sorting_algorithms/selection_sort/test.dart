class SelectionSort {
  List<int> selectionSort(List<int> arr) {
    for (var i = 0; i < arr.length; i++) {
      var lowestNumberIndex = i;
      for (var j = i + 1; j < arr.length; j++) {
        if (arr[j] < arr[lowestNumberIndex]) {
          lowestNumberIndex = j;
        }
      }
      if (lowestNumberIndex != i) {
        var temp = arr[i];
        arr[i] = arr[lowestNumberIndex];
        arr[lowestNumberIndex] = temp;
      }
    }
    return arr;
  }
}

/// N/2 insertions + N lookups = 1.5N => O(N)
List<int> everyOther(List<int> arr) {
  final newArr = <int>[];
  for (var i = 0; i < arr.length; i++) {
    if (i.isEven) {
      newArr.add(arr[i]);
    }
  }
  return newArr;
}
/// N/2 insertions + N/2 lookups = N => O(N)
List<int> everyOther2(List<int> arr) {
  final newArr = <int>[];
  var index = 0;
  while (index < arr.length) {
    newArr.add(arr[index]);
    index += 2;
  }
  return newArr;
}

void main(List<String> args) {
  final arr = [4, 2, 7, 1, 3];
  final obj = SelectionSort();
  print(obj.selectionSort(arr));
  print(everyOther2(arr));
}
