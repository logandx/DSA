package main

import (
	"_go/hashmap"
	"fmt"
)

func main() {
	strs := []string{"eat",
		"tea",
		"tan",
		"ate",
		"nat",
		"bat",
		"ba",
		"ca",
		"a",
		"ab"}

	fmt.Print(hashmap.GroupAnagrams(strs))
}
