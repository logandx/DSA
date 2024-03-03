class Solution {
  bool isPowerOfTwo(int n) {
    // Base cases
    if (n == 1) {
      return true; // 2^0 = 1
    } else if (n % 2 != 0 || n == 0) {
      return false; // If n is not even or 0, it's not a power of two
    } else {
      // Recursively check if n/2 is a power of two
      return isPowerOfTwo(n ~/ 2);
    }
  }
}

class Solution2 {
  // A power of two in binary form has only one '1' bit using bitwise AND to
  // check if there is exactly one set bit
  bool isPowerOfTwo(int n) {
    if (n <= 0) {
      return false;
    }
    return n & (n - 1) == 0;
  }
}

void main(List<String> args) {
  final n = 12;
  final obj = Solution();
  print(obj.isPowerOfTwo(n));
  print(11 ~/ 2);
}
