class Solution {
  String reverseWords(String s) {
    List<String> ans = [];
    int? leftPointer;
    List<String> chars = s.split('');
    print(chars);
    for (int i = 0; i < chars.length; i++) {
      String char = chars[i];
      if (char != " ") {
        if (leftPointer == null) {
          leftPointer = i;
        }
        if (i == chars.length - 1) {
          String word = chars.sublist(leftPointer, i + 1).join();
          ans.add(word);
          continue;
        }
      } else {
        if (leftPointer != null) {
          String word = chars.sublist(leftPointer, i).join();
          ans.add(word);
          leftPointer = null;
        }
      }
    }
    ans = ans.reversed.toList();
    return ans.join(" ");
  }
}

void main() {
  Solution solution = Solution();
  print(solution.reverseWords("  hello world  ")); // Output: "world hello"
}
