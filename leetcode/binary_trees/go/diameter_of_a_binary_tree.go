package binary_trees

import (
	"fmt"
	"math"
)

type TreeNode struct {
	Val   int
	Left  *TreeNode
	Right *TreeNode
}

func diameterOfBinaryTree(root *TreeNode) int {
	diameter := 0

	// Post-order DFS Traversal
	// Calculate height AND update diameter
	var height func(*TreeNode) int
	height = func(node *TreeNode) int {
		// -1 cancels out the +1 below in the return statement
		// There is not an edge running to a null node
		if node == nil {
			return -1
		}

		leftHeight := height(node.Left)
		rightHeight := height(node.Right)

		// Calculate the diameter for [node]
		// +2 here is for the 2 edges connecting [node] to the left and right child nodes
		// Example:
		//     1     <--- [node]
		//    / \    <--- +2 comes from here, these edges are not part of [leftHeight] or [rightHeight]
		//   2   3   <--- leftHeight (2) = 1, rightHeight (3) = 0
		//  / \           root diameter = 2 + 1 + 0 = 3
		diameter = int(math.Max(float64(diameter), float64(2+leftHeight+rightHeight)))

		// Calculate the height for [node]
		// +1 for the edge from [node] to either left or right subtree
		//     1     <--- [node]
		//    / \    <--- +1 comes from node [1] to [2]
		//   2   3   <--- leftHeight (2) = 1, rightHeight (3) = 0
		//  / \           root height = 1 + 1 = 2
		return 1 + int(math.Max(float64(leftHeight), float64(rightHeight)))
	}

	height(root)

	return diameter
}

func main() {
	// Example usage
	root := &TreeNode{Val: 1}
	root.Left = &TreeNode{Val: 2}
	root.Right = &TreeNode{Val: 3}
	root.Left.Left = &TreeNode{Val: 4}
	root.Left.Right = &TreeNode{Val: 5}

	fmt.Println("Diameter of the binary tree:", diameterOfBinaryTree(root))
}
