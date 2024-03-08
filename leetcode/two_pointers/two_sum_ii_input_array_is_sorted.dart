/// The target will be never ever exist on any element in the array
class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    if (numbers.length == 2) {
      return [1, 2];
    }
    int left = 0;
    int right = numbers.length - 1;
    while (left < right) {
      int sum = numbers[left] + numbers[right];
      if (sum == target) {
        return [left + 1, right + 1];
      } else if (sum > target) {
        right--;
      } else if (sum < target) {
        left++;
      }
    }
    return [];
  }
}

void main(List<String> args) {
  final numbers = <int>[2, 3, 7, 12, 15];
  final target = 19;
  final object = Solution();
  print(object.twoSum(numbers, target));
}
