class Solution {
  int findLeastNumOfUniqueInts(List<int> arr, int k) {
    var hashMap = <int, int>{};
    for (var num in arr) {
      hashMap[num] = (hashMap[num] ?? 0) + 1;
    }
    var valuesFrequency = hashMap.values.toList();
    valuesFrequency.sort();
    print(hashMap);

    var length = hashMap.length;
    for (var element in valuesFrequency) {
      if (element <= k) {
        length--;
        k -= element;
      } else {
        break;
      }
    }
    return length;
  }
}

void main() {
  var arr = [1, 2, 3, 4, 5, 1, 2, 3];
  var k = 2;
  var obj = Solution();
  var result = obj.findLeastNumOfUniqueInts(arr, k);
  print(result);
}
