class Solution {
  List<List<int>> threeSum(List<int> nums) {
    for (var i = 0; i < nums.length; i++) {
      for (var j = i; j < nums.length; j++) {
        print('i $i');
        print('j $j');
      }
    }
    return [];
  }
}

void main(List<String> args) {
  final nums = [-1, 0, 1, 2, -1, 4];
  final object = Solution();
  print(object.threeSum(nums));
}
