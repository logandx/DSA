class Solution {
  List<int> topKFrequent(List<int> nums, int k) {
    final hashmap = <int, int>{};
    for (var i = 0; i < nums.length; i++) {
      hashmap[nums[i]] = (hashmap[nums[i]] ?? 0) + 1;
    }
    var result = <int>[];
    var sortedByValueMap = Map<int, int>.fromEntries(hashmap.entries.toList()
      ..sort((e1, e2) => e2.value.compareTo(e1.value)));
    sortedByValueMap.forEach((key, value) {
      if (result.length < k) {
        result.add(key);
      }
    });
    return result;
  }
}

class Solution2 {
  List<int> topKFrequent(List<int> nums, int k) {
    final hashmap = <int, int>{};
    for (int i = 0; i < nums.length; i++) {
      hashmap[nums[i]] = (hashmap[nums[i]] ?? 0) + 1;
    }
    final result = <int>[];
    for (int i = 0; i < k; i++) {
      int maxCount = 0;
      int maxCandidate = 0;
      hashmap.entries.forEach((element) {
        if (element.value > maxCount) {
          maxCandidate = element.key;
          maxCount = element.value;
        }
      });
      result.add(maxCandidate);
      hashmap.remove(maxCandidate);
    }
    return result;
  }
}

void main() {
  final nums = [1, 1, 1, 2, 2, 2, 2, 3, 3];
  final k = 3;
  final obj = Solution();
  print(obj.topKFrequent(nums, k));
}
