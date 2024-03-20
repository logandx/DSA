package two_pointers

func removeDuplicates(nums []int) int {
	left := 0
	for _, v := range nums {
		if left < 2 || nums[left - 2] == v {
			nums[left] = v
			left++
		}
	}
	return left
}

func main() {
	nums := []int{0,0,1,1,2,3,3}
	fmt.Println(removeDuplicates(nums))

}