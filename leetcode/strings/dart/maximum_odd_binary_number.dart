class Solution {
  String maximumOddBinaryNumber(String s) {
    var counter = 0;
    for (var i = 0; i < s.length; i++) {
      if (s[i] == "1") {
        counter++;
      }
    }
    return "1" * (counter - 1) + "0" * (s.length - counter) + "1";
  }
}

void main(List<String> args) {
  final obj = Solution();
  final s = '101001';
  print(obj.maximumOddBinaryNumber(s));
}
