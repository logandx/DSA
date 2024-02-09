import 'dart:math';

class Solution {
  int largestAltitude(List<int> gain) {
    final prefixSum = List.generate(gain.length +1, (_)=>0);
    print(prefixSum);
    for (var i = 1; i < gain.length + 1; i++) {
      prefixSum[i] = prefixSum[i - 1] + gain[i - 1];
    }
    return prefixSum.reduce((a, b) => max(a, b));
  }
}

void main(List<String> args) {
  final gain = [-4, -3, -2, -1, 4, 3, 2];
  final obj = Solution();
  print(obj.largestAltitude(gain));
}
