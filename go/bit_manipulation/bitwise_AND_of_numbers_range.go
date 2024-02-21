package main

import "fmt"

func rangeBitwiseAnd(left int, right int) int {
	count := 0
	for left != right {
		left >>= 1
		right >>= 1
		count += 1
	}
	return right << count
}

func rangeBitwiseAnd2(left int, right int) int {
	result := left & right
	distance := right - left + 1

	for i := 0; i < 32; i++ {
		if (result>>i)&1 == 1 && distance > (1<<i) {
			result = result ^ (1 << i)
		}
	}
	return result

}

func main() {
	left := 1
	right := 2
	fmt.Println(left & right)
	fmt.Println(rangeBitwiseAnd(left, right))
}
