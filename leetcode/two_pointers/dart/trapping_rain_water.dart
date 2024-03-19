import 'dart:math';

class Solution {
  int trap(List<int> height) {
    int left = 0,
        right = height.length - 1,
        leftMax = height[left],
        rightMax = height[right],
        result = 0;
    while (left < right) {
      if (leftMax < rightMax) {
        left++;
        leftMax = max(leftMax, height[left]);
        result += leftMax - height[left];
      } else {
        right--;
        rightMax = max(rightMax, height[right]);
        result += rightMax - height[right];
      }
    }
    return result;
  }
}

void main(List<String> args) {
  final height = <int>[0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1];
  final object = Solution();
  print(object.trap(height));
}
