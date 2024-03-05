/**
 * Given an integer array nums, return an array answer such that answer[i] is 
 * equal to the product of all the elements of nums except nums[i].

The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

You must write an algorithm that runs in O(n) time and without using the division operation.

Example 1:

Input: nums = [1,2,3,4]
Output: [24,12,8,6]
Example 2:

Input: nums = [-1,1,0,-3,3]
Output: [0,0,9,0,0]

Constraints:

2 <= nums.length <= 105
-30 <= nums[i] <= 30
The product of any prefix or suffix of nums is guaranteed to fit in a 32-bit integer.

Follow up: Can you solve the problem in O(1) extra space complexity? 
(The output array does not count as extra space for space complexity analysis.)


 * 
 * 
 * Product of an array except itself demonstration
 *
 * This example using multiply arithmetic
 *
 * nums = [1,2,3,4]
 * output = [24,12,8,6]
 *
 * // Explanation
 *  nums[0] = 1 => output[0] = nums[1] * nums[2] * nums[3] = 2 * 3 * 4 = 24
 *  nums[1] = 2 => output[1] = nums[0] * nums[2] * nums[3] = 1 * 3 * 4 = 12
 *  nums[2] = 3 => output[2] = nums[0] * nums[1] * nums[3] = 1 * 2 * 4 = 8
 *  nums[3] = 4 => output[3] = nums[0] * nums[1] * nums[2] = 1 * 2 * 3 = 6
 *
 * // Draft
 * First calculate the result of the nums by multiply all the element in the
 * `nums` array, then use that result to divide by index specific index
 * output[0] = 1 * 2 * 3 * 4 = 24 / nums[0] = 24 / 1 = 24
 * output[1] = 1 * 2 * 3 * 4 = 24 / nums[1] = 24 / 2 = 12
 * output[2] = 1 * 2 * 3 * 4 = 24 / nums[2] = 24 / 3 = 8
 * output[3] = 1 * 2 * 3 * 4 = 24 / nums[3] = 24 / 4 = 6
 *
 */

/// How can I get the logic?
/// You can get the idea behind it by reverse engineering
/// What does it mean by the product of everything except itself?
/// => So the product of all elements but not the element itself
/// 
/// => Why do we access those elements?
/// 
/// => Two kinds of elements that make up the product => One before this Nth
/// element, ones after this element
/// 
/// => Keep track of them and multiply
class Solution {
  List<int> productExceptSelf(List<int> nums) {
    List<int> res = List<int>.filled(nums.length, 1);
    int prefix = 1;
    for (int i = 0; i < nums.length; i++) {
      res[i] = prefix;
      prefix *= nums[i];
    }
    int postfix = 1;
    for (int i = nums.length - 1; i >= 0; i--) {
      res[i] *= postfix;
      postfix *= nums[i];
    }
    return res;
  }
}

class TheSolutionThatWontWorksOnON {
  List<int> productExceptSelf(List<int> nums) {
    final result = <int>[];
    for (var i = 0; i < nums.length; i++) {
      final newList = List.from(nums);
      newList.removeAt(i);
      var calculatedValue = newList.reduce((value, element) => value * element);
      result.add(calculatedValue);
    }
    return result;
  }
}

void main(List<String> args) {
  final nums = [1, 2, 3, 4];
  final obj = Solution();
  print(obj.productExceptSelf(nums));
}
