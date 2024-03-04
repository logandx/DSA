/**
 * Topics: Array, Hash Table, Math, Binary Search, Bit Manipulation, Sorting
 * 
 * This problem is located as in math folder since I think it would be the best
 * practice.
 */
class Solution {
  /// O(1) Space --- O(NlogN) with Sort + O(N) with loop iterates
  int missingNumber(List<int> nums) {
    nums.sort();
    var current = nums.length + 1;
    var result = 0;
    for (var i = nums.length - 1; i >= 0; i--) {
      if (current - nums[i] == 2) {
        result = current - 1;
        break;
      }
      current--;
    }
    return result;
  }
}

class Solution2 {
  /// O(1) Space --- O(N) Time with reduce function
  int missingNumber(List<int> nums) {
    var n = nums.length;
    var expectedSum = (n * (n + 1)) ~/ 2; // Sum of first n natural numbers
    var actualSum = nums.reduce((a, b) => a + b);
    return expectedSum - actualSum;
  }

  /// O(1) Space --- O(N) Time with loop iterates
  int missingNumber2(List<int> nums) {
    var n = nums.length;
    var expectedSum = (n * (n + 1)) ~/ 2; // Sum of first n natural numbers
    var actualSum = 0;
    for (var i = 0; i < nums.length; i++) {
      actualSum += nums[i];
    }
    return expectedSum - actualSum;
  }
}

void main() {
  final nums = [0, 1];
  final obj = Solution();
  print(obj.missingNumber(nums));
}
