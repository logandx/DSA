class Solution1 {
  bool isAnagram(String s, String t) {
    if (s.length != t.length) {
      return false;
    }
    final arr = List<int>.filled(26, 0);
    for (int i = 0; i < s.length; i++) {
      arr[s[i].codeUnitAt(0) - 'a'.codeUnitAt(0)]++;
      arr[t[i].codeUnitAt(0) - 'a'.codeUnitAt(0)]--;
    }
    return arr.every((element) => element == 0);
  }
}

class Solution2 {
  bool isAnagram(String s, String t) {
    List<String> sList = s.split('');
    sList.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
    List<String> tList = t.split('');
    tList.sort((a, b) => a.toLowerCase().compareTo(b.toLowerCase()));
    return sList.join('') == tList.join('');
  }
}

class Solution3 {
  bool isAnagram(String s, String t) {
    final hashMap = <String, int>{};
    for (int i = 0; i < s.length; i++) {
      hashMap[s[i]] = (hashMap[s[i]] ?? 0) + 1;
      hashMap[t[i]] = (hashMap[t[i]] ?? 0) - 1;
    }
    return hashMap.values.every((element) => element == 0);
  }
}

void main() {
  final s = 'rat';
  final t = 'car';
  final sol = Solution3();
  print(sol.isAnagram(s, t));
}
