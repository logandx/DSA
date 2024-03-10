/// In this two pointers problem we create a two variables called `left` and
/// `right` to perform the operation. Something I've realized is that the pointers
/// ar treated as the indexes for look up from something(string, array,etc...).
/// And they would have to increase/decrease base on the specific reason to
/// reach the edge of the result where they stop increasing/decreasing
class Solution {
  bool isPalindrome(String s) {
    s = s.toLowerCase().replaceAll(RegExp('[^A-Za-z0-9]'), '');
    if (s.isEmpty || s.length == 1) {
      return true;
    }
    int left = 0;
    int right = s.length - 1;
    while (s[left] == s[right]) {
      if (left + 1 == right) {
        return true;
      }
      left++;
      right--;
      if (left == right) {
        return true;
      }
    }
    return false;
  }
}

void main(List<String> args) {
  final s = "abccba";
  final object = Solution();
  print(object.isPalindrome(s));
}
