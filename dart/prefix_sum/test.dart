/* 
For ones, who did not understand how prefix-postfix works, lets change
 1, 2, 3, 4 positions to symbols like a, b, c, d, so multiplying will be:
prefix:
->
|       a       |   a*b   | a*b*c | a*b*c*d |
postfix:
<-
| a*b*c*d | b*c*d |   c*d   |      d        |

The result is a multiply without the symbol in own position (the left value from
 prefix and the right one from postfix):
|    b*c*d  | a*c*d | a*b*d |   a*b*c   |
 */

class PrefixSum {
  /// Time Complexity: O(N)
  /// Auxiliary Space: O(N)
  List<int> calculatePrefix(List<int> nums) {
    final prefixSum = List<int>.filled(nums.length, 0);
    prefixSum[0] = nums[0];
    for (var i = 1; i < nums.length; i++) {
      // The current value of prefixSum is equal to the previous prefixSum's
      // value + the current value of nums
      prefixSum[i] = prefixSum[i - 1] + nums[i];
    }
    return prefixSum;
  }
}

class PostfixSum {
  List<int> calculatePostfix(List<int> nums) {
    final postfixSum = List<int>.filled(nums.length, 0);
    postfixSum.last = nums.last;
    for (var i = nums.length - 2; i >= 0; i--) {
      postfixSum[i] = postfixSum[i + 1] + nums[i];
    }
    return postfixSum;
  }
}

void main(List<String> args) {
  final object = PrefixSum();
  final nums = [1, 2, 3, 4];
  print(object.calculatePrefix(nums));
}
