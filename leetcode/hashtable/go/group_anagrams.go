package hashmap

import (
	"fmt"
	"sort"
	"strings"
)

/// Note: do not return sorted/re-arranged strs
// Utility functions to get the values of HashMap with specific type,
// the specific type is String here
func getMapValues(m map[string][]string) [][]string {
	values := make([][]string, 0, len(m))
	// For the map, the for loop with i1, and i2 indicates for the key, and value
	for _, v := range m {
		values = append(values, v)
	}
	return values
}

func GroupAnagrams(strs []string) [][]string {
	hashMap := make(map[string][]string)
	for _, element := range strs {
		listStr := strings.Split(element, "")
		sort.Strings(listStr)
		key := strings.Join(listStr, "")
		hashMap[key] = append(hashMap[key], element)
	}
	res := getMapValues(hashMap)
	return res
}

///------------------------------------------------------------------

type EngAlphaBet [26]byte

func StringCounter(str string) (char EngAlphaBet) {
	for i := range str {
		char[str[i]-'a']++
	}
	return char
}
func GroupAnagrams2(strs []string) [][]string {
	hashMap := make(map[EngAlphaBet][]string)
	for _, v := range strs {
		key := StringCounter(v)
		hashMap[key] = append(hashMap[key], v)
	}
	fmt.Println(hashMap)
	fmt.Println(len(hashMap))
	result := make([][]string, 0, len(hashMap))
	for _, v := range hashMap {
		result = append(result, v)
	}
	return result
}
