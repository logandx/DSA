class Solution {
  int findJudge(int n, List<List<int>> trust) {
    final count = List.filled(n + 1, 0);
    for (var i = 0; i < trust.length; i++) {
      print(trust[0]);
      print('---');
      print(trust[1]);
      print('---');
    }
    for (var element in trust) {
      print('object : ${element[1]}');
      count[element[0]]--;
      count[element[1]]++;
    }
    print(count);
    for (var i = 1; i < n + 1; i++) {
      if (count[i] == n - 1) {
        return i;
      }
    }
    return -1;
  }
}

void main() {
  final n = 3;
  final trust = [
    [1, 3],
    [2, 3]
  ];
  final obj = Solution();
  print(obj.findJudge(n, trust));
}
