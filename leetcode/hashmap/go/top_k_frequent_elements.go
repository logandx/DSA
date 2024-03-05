package hashmap

import "fmt"

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
