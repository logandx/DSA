///Note: do not return sorted/re-arranged strs

class Solution1 {
  List<List<String>> groupAnagrams(List<String> strs) {
    final hashMap = <String, List<String>>{};
    strs.forEach((element) {
      final listStr = element.split('');
      listStr.sort();
      final key = listStr.join();
      if (hashMap.containsKey(key)) {
        hashMap[key]!.add(element);
      } else {
        hashMap[key] = [element];
      }
    });
    return hashMap.values.toList();
  }
}

class Solution2 {
  List<List<String>> groupAnagrams(List<String> strs) {
    final arr = <String>[];
    final hashMap = <String, List<String>>{};
    for (var i = 0; i < strs.length; i++) {
      final s = strs[i].split('');
      s.sort();
      arr.add(s.join());
    }

    for (var i = 0; i < arr.length; i++) {
      if (hashMap[arr[i]] == null) {
        hashMap[arr[i]] = [];
      }
      hashMap[arr[i]]?.add(strs[i]);
    }
    return hashMap.values.toList();
  }
}

void main() {
  final strs = <String>[
    "eat",
    "tea",
    "tan",
    "ate",
    "nat",
    "bat",
    "ba",
    "ca",
    "a",
    "ab",
  ];

  final sol = Solution2();
  sol.groupAnagrams(strs);
}
