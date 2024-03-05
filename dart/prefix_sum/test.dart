class PrefixSum {
  /// Time Complexity: O(N)
  /// Auxiliary Space: O(N)
  List<int> calculate(List<int> nums) {
    final prefixSum = List<int>.filled(nums.length, 0);
    prefixSum[0] = nums[0];
    for (var i = 1; i < nums.length; i++) {
      // The current value of prefixSum is equal to the previous prefixSum's
      // value + the current value of nums
      prefixSum[i] = prefixSum[i - 1] + nums[i];
    }
    return prefixSum;
  }
}

void main(List<String> args) {
  final object = PrefixSum();
  final nums = [10, 4, 16, 20];
  print(object.calculate(nums));
}
