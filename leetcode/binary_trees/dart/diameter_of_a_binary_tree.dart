import 'dart:math';

import '../../../dart/binary_trees/tree_node.dart';


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
  int diameterOfBinaryTree(TreeNode? root) {
    int diameter = 0;

    // Post-order DFS Traversal
    // Calculate height AND update diameter
    int height(TreeNode? node) {
      // -1 cancels out the +1 below in the return statement
      // There is not an edge running to a null node
      if (node == null) return -1;

      int leftHeight = height(node.left);
      int rightHeight = height(node.right);

      // Calculate the diameter for [node]
      // +2 here is for the 2 edges connecting [node] to the left and right child nodes
      // Example:
      //     1     <--- [node]
      //    / \    <--- +2 comes from here, these edges are not part of [leftHeight] or [rightHeight]
      //   2   3   <--- leftHeight (2) = 1, rightHeight (3) = 0
      //  / \           root diameter = 2 + 1 + 0 = 3
      // 4   5
      diameter = max(diameter, 2 + leftHeight + rightHeight);

      // Calculate the height for [node]
      // +1 for the edge from [node] to eighter left or right subtree
      //     1     <--- [node]
      //    / \    <--- +1 comes from node [1] to [2]
      //   2   3   <--- leftHeight (2) = 1, rightHeight (3) = 0
      //  / \           root height = 1 + 1 = 2
      // 4   5
      return 1 + max(leftHeight, rightHeight);
    }

    height(root);

    return diameter;
  }
}
