package main

import "fmt"

func getConcatenation(nums []int) []int {
	ans := make([]int, len(nums)*2)
	for i := 0; i < len(nums); i++ {
		ans[i] = nums[i]
		ans[i+len(nums)] = nums[i]
	}
	return ans
}

func main() {
	nums := []int{1, 2, 1}
	fmt.Println(getConcatenation(nums))
}
