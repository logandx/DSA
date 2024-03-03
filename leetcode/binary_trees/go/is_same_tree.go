type TreeNode struct {
	Val int
	Left *TreeNode 
	Right *TreeNode 
}


func isSameTree(a TreeNode, b TreeNode) bool {
	if a == nil || b == nil {
		return a == b
	}
	return a.Val == b.Val && isSameTree(a.Left, b.Left) && isSameTree(a.Right, b.Right)
}