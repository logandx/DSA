class Solution {
  int removeDuplicates(List<int> nums) {
    if (nums.length <= 2) {
      return nums.length;
    }
    int left = 0;
    for (var element in nums) {
      if (left < 2 || nums[left - 2] == element) {
        nums[left++] = element;
      }
    }
    return left;
  }
}

void main(List<String> args) {
  final nums = [0, 0, 1, 1, 2, 3, 3];
  final object = Solution();
  print(object.removeDuplicates(nums));
}
