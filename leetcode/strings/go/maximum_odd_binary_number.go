package main

import "strings"

func maximumOddBinaryNumber(s string) string {
	counter := 0
	for i := 0; i < len(s); i++ {
		if s[i] == '1' {
			counter++
		}
	}
	return strings.Repeat("1", counter-1) + strings.Repeat("0", len(s)-counter) + "1"

}
