/**
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

void main(List<String> args) {
  final nums = [1, 2, 3, 4];
  final obj = Solution();
  print(obj.productExceptSelf(nums));
}
