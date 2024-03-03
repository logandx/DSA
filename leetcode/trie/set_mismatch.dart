class Solution {
  static List<int> findErrorNums(List<int> nums) {
    final hashMap = <int, int>{};
    final list = <int>[];
    for (var i = 0; i < nums.length; i++) {
      final key = nums[i];
      hashMap[key] = (hashMap[key] ?? 0) + 1;
      if (!hashMap.containsKey(key)) {
        hashMap[key] = 0;
      }
      if (hashMap[key]! == 2) {
        list.addAll(hashMap.values);
      }
    }
    print(list);
    print(hashMap);
    return [];
  }
}

void main(List<String> args) {
  final nums = [1, 1];
  Solution.findErrorNums(nums);
}
