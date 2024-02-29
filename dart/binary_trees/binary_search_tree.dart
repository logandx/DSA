import 'tree_node.dart';

class BinarySearchTree {
  TreeNode? root;

  BinarySearchTree(this.root);

  TreeNode? search(int value) {
    return _searchRecursive(value, root);
  }

  TreeNode? _searchRecursive(int value, TreeNode? node) {
    // Base case: If the node is nonexistent or we've found the value we're looking for:
    if (node == null || node.val == value) {
      return node;
    }
    // If the value is less than the current node, perform search on the left child:
    else if (value < node.val) {
      return _searchRecursive(value, node.left);
    }
    // If the value is greater than the current node, perform search on the right child:
    else {
      return _searchRecursive(value, node.right);
    }
  }

  void insert(int value, TreeNode node) {
    if (value < node.val) {
      // If the left child does not exist, we want to insert
      // the value as the left child:
      if (node.left == null) {
        node.left = TreeNode(value);
      } else {
        insert(value, node.left!);
      }
    } else if (value > node.val) {
      // If the right child does not exist, we want to insert
      // the value as the right child:
      if (node.right == null) {
        node.right = TreeNode(value);
      } else {
        insert(value, node.right!);
      }
    }
  }

  /// Deletion algorithm rules:
  ///
  /// 1/ If the node being deleted has no children, simple delete it.
  ///
  /// 2/ If the node being deleted has one child, delete it and plug the child into
  /// the spot where the deleted node was.
  ///
  /// 3/ If the node being deleted has two children, replace the deleted node with
  /// the successor node. The successor node is the child node whose value is
  /// the least of all values that are greater than the deleted node.
  ///
  /// If the successor node has a right child, after plugging the successor
  /// into the spot of the deleted node, take the right child of the successor
  /// node and turn it into the left child of the parent of the successor node.

  TreeNode? delete(int valueToDelete, TreeNode? node) {
    // Base case: When we're hit the bottom of the tree, and the parent node has
    // no children.
    if (node == null) {
      return null;
      // If the value we're deleting is less or greater than the current
      // node's value, we set the left or right child respectively to be the
      // return value of a recursive call of this very method on the current
      // node's left or right subtree.
    } else if (valueToDelete < node.val) {
      node.left = delete(valueToDelete, node.left);
      // We return the current node (and its subtree if existent) to be used as
      // the new value of its parent's left or right child:
      return node;
    } else if (valueToDelete > node.val) {
      node.right = delete(valueToDelete, node.right);
      return node;
      // If the current node is the one we want to delete:
    } else if (valueToDelete == node.val) {
      // If the current node has no left child, we delete it by returning its
      // right child (and its subtree if existent) to be its parent's new subtree:
      if (node.left == null) {
        return node.right;
        // If the current node has no left OR right child, this ends up being null
        // as per the first line of code in this function.
      } else if (node.right == null) {
        return node.left;
      } else {
        // If the current node has two children, we delete the current node by
        // calling the lift function (below), which changes the current node's
        // value to the value of its successor node:
        node.right = lift(node.right!, node);
        return node;
      }
    }
    return null;
  }

  TreeNode? lift(TreeNode node, TreeNode nodeToDelete) {
    // If the current node of this function has a left child, we recursively call
    // this function to continue down the left subtree to func the successor node.
    if (node.left != null) {
      node.left = lift(node.left!, nodeToDelete);
      return node;

      // If the current node has no left child, that means the current node of this
      // function is the successor node, and we take its value and make it the new
      // value of the node that we’re deleting:
    } else {
      nodeToDelete.val = node.val;
      return node.right;
    }
  }
}

void main() {
  // Example usage:
  // Creating a binary tree of integers
  var root = TreeNode(10);
  root.left = TreeNode(5);
  root.right = TreeNode(15);
  root.left!.left = TreeNode(3);
  root.left!.right = TreeNode(7);
  root.right!.left = TreeNode(12);
  root.right!.right = TreeNode(17);

  var binarySearchTree = BinarySearchTree(root);

  // Searching for a value in the tree
  var valueToSearch = 7;
  var resultNode = binarySearchTree.search(valueToSearch);
  if (resultNode != null) {
    print("Found $valueToSearch in the binary tree.");
  } else {
    print("$valueToSearch not found in the binary tree.");
  }

  // Deleting a node
  var valueToDelete = 5;
  binarySearchTree.delete(valueToDelete, root);

  // Traversing the tree to verify deletion
  printInOrderTraversal(root);
}

void printInOrderTraversal(TreeNode? node) {
  if (node != null) {
    printInOrderTraversal(node.left);
    print(node.val);
    printInOrderTraversal(node.right);
  }
}
