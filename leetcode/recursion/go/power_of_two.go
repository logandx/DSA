package recursion

import (
	"fmt"
)

func powerOfTwo(n int) bool {
	// base case
	if n == 1 {
		return true
	} else if n % 2 != 0 || n == 0 {
		return false
	} else {
		return powerOfTwo(n / 2)
	}
}

func powerOfTwo2 (n int ) bool {
	return n > 0 && n & (n-1) == 0
}

func main () {
	n := 16
	result := powerOfTwo(n)
	fmt.Println(result)
}