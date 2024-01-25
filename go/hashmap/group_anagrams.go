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

type Key [26]byte

func strKey(str string) (key Key) {
	for i := range str {
		key[str[i]-'a']++
	}
	return key
}
func GroupAnagrams21(strs []string) [][]string {
	groups := make(map[Key][]string)
	for _, v := range strs {
		key := strKey(v)
		fmt.Println(key)
		groups[key] = append(groups[key], v)
	}
	result := make([][]string, 0, len(groups))
	for _, v := range groups {
		result = append(result, v)
	}
	return result
}
