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

class Solution2 {
  List<List<int>> threeSum(List<int> nums) {
    nums.sort(); // Sort the array
    List<List<int>> result = [];

    for (int i = 0; i < nums.length; i++) {
      // Avoid duplicates
      if (i > 0 && nums[i] == nums[i - 1]) {
        continue;
      }
      int left = i + 1, right = nums.length - 1;
      while (left < right) {
        int total = nums[i] + nums[left] + nums[right];
        if (total == 0) {
          result.add([nums[i], nums[left], nums[right]]);
          // Avoid duplicates
          while (left < right && nums[left] == nums[left + 1]) {
            left++;
          }
          while (left < right && nums[right] == nums[right - 1]) {
            right--;
          }
          left++;
          right--;
        } else if (total < 0) {
          left++;
        } else {
          right--;
        }
      }
    }
    return result;
  }
}

void main(List<String> args) {
  final nums = [-1, 0, 1, 2, -1, -4];
  final object = Solution2();
  print(object.threeSum(nums));
}
