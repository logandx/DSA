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
