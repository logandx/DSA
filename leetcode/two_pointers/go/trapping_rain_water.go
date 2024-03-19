package two_pointers

import "fmt"

func trap(height []int) int {
	var (
		left, right = 0, len(height) - 1
		leftMax     = height[left]
		rightMax    = height[right]
		result      = 0
	)
	for left < right {
		if leftMax < rightMax {
			left++
			leftMax = max(leftMax, height[left])
			result += leftMax - height[left]
		} else {
			right--
			rightMax = max(rightMax, height[right])
			result += rightMax - height[right]
		}
	}
	return result
}

func main() {
	height := []int{0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1}
	fmt.Println(trap(height))
}
