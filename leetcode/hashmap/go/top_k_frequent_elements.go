package hashmap

import "fmt"

func getMapValue(m map[int]int) []int {
	values := make([]int, 0, len(m))
	// For the map, the for loop with i1, and i2 indicates for the key, and value
	for _, v := range m {
		values = append(values, v)
	}
	return values
}

func topKFrequent(nums []int, k int) []int {
	result := make([]int, k)
	hashmap := make(map[int]int)

	for _, v := range hashmap {
		hashmap[v]++
	}
	fmt.Println(hashmap)
	for i := 0; i < k; i++ {
		maxCandidate := 0
		maxCount := 0

		for k, v := range hashmap {
			if v > maxCount {
				maxCandidate = k
				maxCount = v
			}
		}
		result[i] = maxCandidate
		delete(hashmap, maxCandidate)
	}
	return result
}

func main() {
	nums := []int{1, 1, 1, 2, 2, 3}
	k := 2
	fmt.Println(topKFrequent(nums, k))
}
