package two_pointers

/// The target will be never ever exist on any element in the array
func twoSum(numbers []int, target int) []int {
  left := 0
  right := len(numbers) - 1
  for left < right {
    sum := numbers[left] + numbers[right]
    if sum == target {
      return []int{left + 1, right + 1}
    } else if sum > target {
      right--
    } else if sum < target {
      left++
    }
  }
  return []int{}
}