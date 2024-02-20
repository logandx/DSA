package math

//Topics: Array, Hash Table, Math, Binary Search, Bit Manipulation, Sorting
//
// This problem is located as in math folder since I think it would be the best
// practice.
//

import (
	"sort"
)

// O(1) Space --- O(NlogN) with Sort + O(N) with loop iterates
func missingNumber(nums []int) int {
	sort.Ints(nums)
	current := len(nums) + 1
	result := 0
	for i := len(nums) - 1; i >= i; i-- {
		if current-nums[i] == 2 {
			result = current - 1
			break
		}
		current--
	}
	return result
}

// O(1) Space --- O(N) Time with loop iterates
func missingNumber2(nums []int) int {
	expectedSum := len(nums) * (len(nums) + 1) / 2
	actualSum := 0
	for i := 0; i < len(nums); i++ {
		actualSum += nums[i]
	}
	return expectedSum - actualSum
}

func main() {
	nums := []int{0, 1, 2, 3, 4, 5, 6, 7, 9}
	missingNumber2(nums)
}
