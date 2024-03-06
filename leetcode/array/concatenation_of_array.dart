class Solution {
  List<int> getConcatenation(List<int> nums) {
    int size = nums.length;
    final ans = List.filled(size * 2, 0);
    for (var i = 0; i < nums.length; i++) {
      ans[i] = nums[i];
      ans[i + size] = nums[i];
    }
    return ans;
  }
}

void main(List<String> args) {
  final object = Solution();
  final nums = [1, 2, 1];
  print(object.getConcatenation(nums));
}
