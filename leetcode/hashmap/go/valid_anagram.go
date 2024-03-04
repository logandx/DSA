package hashmap

func isAnagram(s string, t string) bool {
	if len(s) != len(t) {
		return false
	}
	list := make([]int, 26)
	for i := 0; i < len(s); i++ {
		indexS := int(s[i]) - int('a')
		indexT := int(t[i]) - int('a')
		list[indexS]++
		list[indexT]--
	}
	for _, v := range list {
		if v != 0 {
			return false
		}
	}
	return true
}
