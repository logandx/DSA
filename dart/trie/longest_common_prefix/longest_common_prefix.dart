class Solution {
  String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) {
      return '';
    }
    String prefix = strs[0];

    for (var i = 0; i < strs.length; i++) {
      while (strs[i].indexOf(prefix) != 0) {
        prefix = prefix.substring(0, prefix.length - 1);
        if (prefix.isEmpty) {
          return '';
        }
      }
    }

    return prefix;
  }
}

void main(List<String> args) {
  final strs = ["flow", "flight", "flap", "flo"];
  // final strs = ['f','a'];
  final obj = Solution();
  print(obj.longestCommonPrefix(strs));
}
