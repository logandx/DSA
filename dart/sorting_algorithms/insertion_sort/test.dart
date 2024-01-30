class InsertionSort {
  List<int> insertionSort(List<int> arr) {
    for (var i = 1; i < arr.length; i++) {
      var position = i;
      var tempValue = arr[i];
      while (position > 0 && arr[position - 1] > tempValue) {
        arr[position] = arr[position - 1];
        position--;
      }
      arr[position] = tempValue;
    }
    return arr;
  }
}

void main(List<String> args) {
  final arr = [4, 1, 7, 2, 3];
  final obj = InsertionSort();
  print(obj.insertionSort(arr));
}
