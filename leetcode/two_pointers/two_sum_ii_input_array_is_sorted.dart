/// Example : numbers = [-9,10,11], target = 21
/// Possible target is combined by the two numbers in the input array would be:
/// Target = 1 == -9 + 10
/// Target = 2 == -9 + 11
/// Target = 21 == 10 + 11
///
/// Continue to check the possible target with another array
/// Example 2 : numbers = [1,3,5,7,9,11], target = 13
/// Possible target:
/// Target = 12 == 1 + 11
/// Target = 10 == 1 + 9
/// Target = 8 == 1 + 7
/// Target = 6 == 1 + 5
/// Target = 4 == 1 + 3
/// Target = 14 == 3 + 11
/// Target = 12 == 3 + 9
/// Target = 10 == 3 + 7
/// Target = 8 == 3 + 5
/// Target = 16 == 5 + 11
/// Target = 14 == 5 + 9
/// Target = 12 == 5 + 7
/// Target = 18 == 7 + 11
/// Target = 16 == 7 + 9
/// Target = 20 == 9 + 11
///
/// 5 + 4 + 3 + 2 + 1

/// The target will be never ever exist on any element in the array
class Solution {
  List<int> twoSum(List<int> numbers, int target) {
    int left = 0;
    int right = numbers.length - 1;
    if (numbers.length == 2) {
      return [1, 2];
    }
    while (numbers[left] + numbers[right] != target) {
      left++;
      right--;
    }
    return [left + 1, right + 1];
    // while (numbers[left] + numbers[right] != target) {}
  }
}

void main(List<String> args) {
  final numbers = <int>[2, 7, 11, 15];
  final target = 6;
  final object = Solution();
  print(object.twoSum(numbers, target));
}
