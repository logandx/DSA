class BubbleSort {
  List<int> bubbleSort(List<int> arr) {
    var unsortedUntilIndex = arr.length - 1;
    var sorted = false;
    while (!sorted) {
      sorted = true;
      for (var i = 0; i < unsortedUntilIndex; i++) {
        if (arr[i] > arr[i + 1]) {
          sorted = false;
          int temp = arr[i];
          arr[i] = arr[i + 1];
          arr[i + 1] = temp;
        }
      }
      unsortedUntilIndex--;
    }
    return arr;
  }
}

void main(List<String> args) {
  final arr = [4, 2, 7, 1, 3];
  final obj = BubbleSort();
  print(obj.bubbleSort(arr));
}
