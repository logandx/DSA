import 'dart:math';

class Solution {
  int maxArea(List<int> height) {
    int left = 0, right = height.length - 1;
    int result = 0;
    while (left < right) {
      int area = (right - left) * min(height[left], height[right]);
      result = max(result, area);
      if (height[left] < height[right]) {
        left++;
      } else {
        right--;
      }
    }
    return result;
  }
}

void main(List<String> args) {
  final height = [1, 8, 6, 2, 5, 4, 8, 3, 7];
  final object = Solution();
  print(object.maxArea(height));
}
