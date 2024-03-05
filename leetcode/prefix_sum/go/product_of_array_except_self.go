package _go

func productExceptSelf(nums []int) []int {
	result := make([]int, len(nums))
	prefix := 1
	for i := 0; i < len(nums); i++ {
		result[i] = prefix
		prefix *= nums[i]
	}
	postfix := 1
	for i := len(nums) - 1; i >= 0; i-- {
		result[i] *= postfix
		postfix *= nums[i]
	}
	return result
}

// / This seems a standard way of prefix sum approach
func productExceptSelf2(nums []int) []int {
	result := make([]int, len(nums))
	result[0] = 1
	result[len(nums)-1] = 1
	postfix := 1
	for i := 1; i < len(nums); i++ {
		result[i] = result[i-1] * nums[i-1]
	}
	for i := len(nums) - 2; i >= 0; i-- {
		postfix *= nums[i+1]
		result[i] *= postfix
	}
	return result
}
