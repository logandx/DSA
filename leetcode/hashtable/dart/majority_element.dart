class Solution {
  int majorityElement(List<int> nums) {
    final hashMap = <int, int>{};
    for (var i = 0; i < nums.length; i++) {
      hashMap[nums[i]] = (hashMap[nums[i]] ?? 0) + 1;
    }
    var mE = 0;
    var threshold = nums.length ~/ 2;
    hashMap.forEach((key, value) {
      if (value > threshold) {
        mE = key;
      }
    });
    return mE;
  }
}

void main(List<String> args) {
  final nums = [3, 2, 3];
  final obj = Solution();
  obj.majorityElement(nums);
}
