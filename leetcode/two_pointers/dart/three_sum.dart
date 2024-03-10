class Solution {
  Map<String, List<int>> scan(List<int> nums, int value) {
    final hashmap = <String, List<int>>{};
    int left = 0;
    int right = nums.length - 1;
    int sum = 0;
    while (left < right) {
      sum = value + nums[left] + nums[right];
      if (sum == 0) {
        hashmap[[value, nums[left], nums[right]].join('')] = [
          value,
          nums[left],
          nums[right],
        ];
        left++;
        while (nums[left] == nums[left - 1] && left < right) {
          left++;
        }
      } else {
        sum > 0 ? right-- : left++;
      }
    }
    return hashmap;
  }

  List<List<int>> threeSum(List<int> nums) {
    nums.sort();
    late List<List<int>> result;
    final hashmap = <String, List<int>>{};
    int first = 0;
    while (nums.length > 2) {
      first = nums.removeAt(0);
      hashmap.addAll(scan(nums, first));
    }
    result = hashmap.values.toList();
    return result;
  }
}

void main(List<String> args) {
  final nums = [-1, 0, 1, 2, -1, 4];
  final object = Solution();
  print(object.threeSum(nums));
}
