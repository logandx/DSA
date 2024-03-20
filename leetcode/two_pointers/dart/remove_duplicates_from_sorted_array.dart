class Solution {
  int removeDuplicates(List<int> nums) {
    int left = 1;
    for (var right = 1; right < nums.length; right++) {
      if (nums[right] != nums[right - 1]) {
        nums[left] = nums[right];
        left++;
      }
    }
    return left;
  }
}

class Solution2 {
  int removeDuplicates(List<int> nums) {
    int currentElement = 0, uniqueElements = 0;
    for (var i = 1; i < nums.length; i++) {
      if (nums[i] == nums[uniqueElements]) {
        uniqueElements++;
      } else {
        nums[currentElement + 1] = nums[i];
        uniqueElements++;
        currentElement++;
      }
    }
    return currentElement + 1;
  }
}

class Solution3 {
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
  final nums = [
    0,
    0,
    1,
    1,
    1,
    2,
    2,
    3,
    3,
    4,
    4,
    4,
    5,
    6,
    6,
    6,
    7,
    8,
    8,
    9,
    10,
    11,
    11,
    11,
    22
  ];
  final object = Solution();
  print(object.removeDuplicates(nums));
}