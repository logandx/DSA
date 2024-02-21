class Solution {
  int rangeBitwiseAnd(int left, int right) {
    var count = 0;
    while (left != right) {
      left >>= 1;
      right >>= 1;
      count += 1;
    }
    return right << count;
  }
}

void main(List<String> args) {
  final left = 5;
  final right = 7;
  final obj = Solution();
  print(obj.rangeBitwiseAnd(left, right));
}
