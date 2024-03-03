package hashmap

func maxFrequencyElements(nums []int) int {
	hashMap := make(map[int][]int)
	var maxElement int
	for i, v := range nums {
		hashMap[v] = append(hashMap[v], i)
		if len(hashMap[v]) > maxElement {
			maxElement = len(hashMap[v])
		}
	}
	var sum int
	for _, v := range nums {
		if len(hashMap[v]) == maxElement {
			sum++
		}
	}
	return sum
}
