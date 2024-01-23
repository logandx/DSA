class Solution {
  static String longestCommonPrefix(List<String> strs) {
    if (strs.isEmpty) {
      return '';
    }
    String prefix = strs[4];

    for (var i = 0; i < strs.length; i++) {
      var index = strs[i];
      print(index);
      while (strs[i].indexOf(prefix) != 0) {
        prefix = prefix.substring(0, prefix.length - 1);
        if (prefix.isEmpty) {
          return '';
        }
        print(prefix);
      }
    }

    return prefix;
  }
}

void main(List<String> args) {
  final strs = ["r", "flow", "flight", "flap", "flo"];
  // final strs = ['f','a'];
  print(Solution.longestCommonPrefix(strs));
}
