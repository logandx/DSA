class Solution {
  int firstUniqueChar(String s) {
    int uniqueCharCount = -1;
    if (s.isEmpty) {
      return uniqueCharCount;
    }
    List<String> splittedStr = s.split('');
    Map<String, int> hashMap = {};
    for (var i = 0; i < splittedStr.length; i++) {
      hashMap[splittedStr[i]] = (hashMap[splittedStr[i]] ?? 0) + 1;
    }
    final entries = hashMap.entries.toList();
    print(entries);
    for (var i = 0; i < entries.length; i++) {
      if (entries[i] == 1) {
        uniqueCharCount = i;
        print(uniqueCharCount);
        return uniqueCharCount;
      }
    }
    return uniqueCharCount;
  }
}

void main(List<String> args) {
  var s = 'dddccdbba'; // failed test case
  final obj = Solution();
  print(obj.firstUniqueChar(s));
}
