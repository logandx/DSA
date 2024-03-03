class Solution {
  /// n equals to the total edges: e.g: n = 4 => edges = 1, 2, 3, 4
  /// k equals to stops required: k = 1 => the dst must be 

  int findCheapestPrice(
    int n,
    List<List<int>> flights,
    int src,
    int dst,
    int k,
  ) {
    return -1;
  }
}

void main(List<String> args) {
  final n = 4;
  final flights = [
    [0, 1, 100],
    [1, 2, 100],
    [2, 0, 100],
    [1, 3, 600],
    [2, 3, 200]
  ];
  final src = 0;
  final dst = 3;
  final k = 1;
  final obj = Solution();
  print(obj.findCheapestPrice(n, flights, src, dst, k));
}
