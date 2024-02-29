import 'dart:math';

import 'tree_node.dart';

class FindDepthBinaryTree {
  int depth(TreeNode? root, int k) {
    // base case
    if (root == null) {
      return -1;
    }

    // initialize distance as -1
    int dist = -1;

    // check if x is the current node
    if ((root.val == k) ||

        // Otherwise, check if k is
        // present in the left subtree
        (dist = depth(root.left, k)) >= 0 ||

        // Otherwise, check if k is
        // present in the right subtree
        (dist = depth(root.right, k)) >= 0) {
      // Return depth of the node
      return dist + 1;
    }

    return dist;
  }
}

class FindHeightBinaryTree {
  int height(TreeNode? root, int k) {
    if (root == null) {
      return -1;
    }
    var leftHeight = height(root.left, k);
    var rightHeight = height(root.left, k);
    return max(leftHeight, rightHeight) + 1;
  }
}

void main(List<String> args) {
  var root = TreeNode(5);
  root.left = TreeNode(10);
  root.right = TreeNode(15);
  root.left?.left = TreeNode(20);
  root.left?.right = TreeNode(25);
  root.left?.right?.right = TreeNode(45);
  root.right?.left = TreeNode(30);
  root.right?.right = TreeNode(35);

  int k = 25;

  final obj = FindDepthBinaryTree();
  final obj2 = FindHeightBinaryTree();
  print(obj2.height(root, k));
}
