class Solution {
  static List<int> twoSum(List<int> nums, int target) {
    final hashMap = <int, int>{};
    for (var i = 0; i < nums.length; i++) {
      if (hashMap.containsKey(target - nums[i])) {
        return [hashMap[target - nums[i]]!, i];
      }
      hashMap[nums[i]] = i;
    }

    return [];
  }
}

void main(List<String> args) {
  var nums = [2, 7, 11, 15];
  var target = 9;
  print(Solution.twoSum(nums, target));
}
