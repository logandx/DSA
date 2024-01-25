package hashmap

import (
	"fmt"
	"sort"
	"strings"
)

/// Note: do not return sorted/re-arranged strs

func getMapValues(m map[string][]string) [][]string {
	values := make([][]string, 0, len(m))
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

func getCharOccurrenceCount(str string) (char EngAlphaBet) {
	for i := range str {
		char[str[i]-'a']++
	}
	return char
}
func GroupAnagrams2(strs []string) [][]string {
	hashMap := make(map[EngAlphaBet][]string)
	for _, v := range strs {
		key := getCharOccurrenceCount(v)
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
