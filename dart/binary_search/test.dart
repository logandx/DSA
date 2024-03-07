class BinarySearch {
  // arr = [1,3,5,7,9,11,13];
  // demonstrate binary search by finding the index of the array with a given target.
  int binarySearch(List<int> arr, int target) {
    int left = 0;
    int right = arr.length - 1;
    while (left <= right) {
      int mid = (left + right) ~/ 2;
      if (arr[mid] == target) {
        return mid;
      } else if (arr[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }
    return -1;
  }
}

void main(List<String> args) {
  /////////////0  1  2  3  4  5   6    7
  final arr = [1, 3, 5, 7, 9, 11, 13, 15];
  final obj = BinarySearch();
  print(obj.binarySearch(arr, 9));
}
