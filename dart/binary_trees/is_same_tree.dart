import 'tree_node.dart';

/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */

class Solution {
  bool isSameTree(TreeNode? a, TreeNode? b) {
    // If both trees are empty, return true
    if (a == null && b == null) {
      return true;
    }

    // If both tree are not empty, check it corresponding value and recursion
    // check their left and right
    if (a != null && b != null) {
      return a.val == b.val &&
          isSameTree(a.left, b.left) &&
          isSameTree(a.right, b.right);
    }
    // If one of them is empty, return false
    return false;
  }
}
