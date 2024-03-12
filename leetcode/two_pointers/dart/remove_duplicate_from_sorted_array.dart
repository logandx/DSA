class Solution {
  int removeDuplicate(List<int> nums) {
    int currentElement = 0, uniqueElement = 0;
    for (var i = 1; i < nums.length; i++) {
      if (nums[i] == nums[uniqueElement]) {
        uniqueElement++;
      } else {
        nums[currentElement + 1] = nums[i];
        currentElement++;
        uniqueElement++;
      }
    }
    return currentElement + 1;
  }
}

class Solution2 {
  int removeDuplicate(List<int> nums) {
    if (nums.length < 2) {
      return 1;
    }
    int left = 0;
    for (var i = 1; i < nums.length; i++) {
      if (nums[left] != nums[i]) {
        nums[left + 1] = nums[i];
        left++;
      }
    }
    left++;
    return left;
  }
}

void main(List<String> args) {
  final nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4];
  final object = Solution();
  print(object.removeDuplicate(nums));
}
