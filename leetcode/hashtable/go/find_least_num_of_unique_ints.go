package hashmap

import (
	"fmt"
	"sort"
)

func findLeastNumOfUniqueInts(arr []int, k int) int {
	hashMap := make(map[int]int)
	for _, num := range arr {
		hashMap[num]++
	}

	var valuesFrequency []int
	for _, v := range hashMap {
		valuesFrequency = append(valuesFrequency, v)
	}
	sort.Ints(valuesFrequency)

	length := len(hashMap)
	for _, element := range valuesFrequency {
		if element <= k {
			length--
			k -= element
		} else {
			break
		}
	}
	return length
}


func main() {
	arr := []int{5, 5, 4}
	k := 3
	result := findLeastNumOfUniqueInts(arr, k)
	fmt.Println(result)
}
