import 'tree_node.dart';

class Solution {
  int findBottomLeftValue(TreeNode? root) {
    if (root == null) {
      return -1;
    }
    final result = <int>[];
    final queue = <TreeNode?>[root];
    while (queue.isNotEmpty) {
      final size = queue.length;
      final currentLevel = <int>[];
      for (var i = 0; i < size; i++) {
        print('1 ${queue.isEmpty}');
        final currentNode = queue.removeAt(0);
        print('2 ${queue.isEmpty}');
        currentLevel.add(currentNode!.val);
        if (currentNode.left != null) {
          queue.add(currentNode.left);
        }
        if (currentNode.right != null) {
          queue.add(currentNode.right);
        }
      }
      result.add(currentLevel[0]);
    }
    return result[result.length - 1];
  }
}

void main(List<String> args) {
  TreeNode root = TreeNode(2);
  root.left = TreeNode(1);
  root.right = TreeNode(3);
  root.right?.left = TreeNode(4);
  root.right?.right = TreeNode(5);

  final obj = Solution();
  print(obj.findBottomLeftValue(root));
}
