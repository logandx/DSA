class Solution {
  bool containsDuplicate(List<int> nums) {
    final hashmap = <int, bool>{};
    for (var i = 0; i < nums.length; i++) {
      if (hashmap[nums[i]] == true) {
        return true;
      }
      hashmap[nums[i]] = true;
    }
    return false;
  }
}

class Solution2 {
  bool containsDuplicate(List<int> nums) {
    return nums.toSet().length != nums.length;
  }
}

void main(List<String> args) {
  final object = Solution();
  final nums = [1, 2, 3, 3, 4];
  print(object.containsDuplicate(nums));
}
