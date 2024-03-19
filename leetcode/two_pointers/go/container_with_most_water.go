package two_pointers

import "fmt"

func maxArea(height []int) int {
	result := 0
	left := 0
	right := len(height) - 1
	for left < right {
		area := (right - left) * min(height[left], height[right])
		result = max(result, area)
		if height[left] < height[right] {
			left++
		} else {
			right--
		}
	}
	return result
}

func main() {
	height := []int{1, 8, 6, 2, 5, 4, 8, 3, 7}
	fmt.Println(maxArea(height))
}
