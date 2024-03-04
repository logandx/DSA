package hashmap

func containsDuplicate(nums []int) bool {
	hashMap := make(map[int][]int)

	for index, value := range nums {
		hashMap[value] = append(hashMap[value], index)

	}
	for index, value := range hashMap {
		hashMap[index] = value
	}
	return len(hashMap) == len(nums)
}

func containsDuplicate2(nums []int) bool {
	hashmap := make(map[int]bool)
	for _, i := range nums {
		if hashmap[nums[i]] == true {
			return true
		}
		hashmap[nums[i]] = true
	}
	return false
}
