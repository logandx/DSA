package hashmap

func twoSum(nums []int, target int) []int {
	hashMap := map[int]int{}
	for i := 0; i < len(nums); i++ {
		if _, value := hashMap[target-nums[i]]; value {
			return []int{hashMap[target-nums[i]], i}
		}
	}

	return []int{}
}