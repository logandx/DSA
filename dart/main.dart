void main() {
  final arr = [3, 17, 80, 202];
  int valueWantToAdd = 75;
  var low = 0;
  var high = arr.length -1;
  while (low < high) {
    var mid = (low + high) >>> 1;
    if (arr[mid] < valueWantToAdd) {
      low = mid + 1;
    }
    else {
      high = mid;
    }
  }
  print(arr);
}
