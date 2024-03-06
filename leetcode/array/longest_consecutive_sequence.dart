class Solution {
  int longestConsecutive(List<int> nums) {
    // Convert the list to a set to remove duplicates and enable fast lookups
    final numsSet = nums.toSet();
    print(numsSet);

    // Variable to store the length of the longest consecutive sequence found
    int longestSequence = 0;

    // Iterate through each number in the set
    for (final number in numsSet) {
      // If the current number is the start of a consecutive sequence
      if (!numsSet.contains(number - 1)) {
        // Initialize sequence length to 1 (for the current number)
        int sequenceLength = 1;
        // Increment sequenceLength as long as the next number in the sequence
        // exists in the set
        while (numsSet.contains(number + sequenceLength)) {
          sequenceLength++;
        }
        // Update longestSequence if the current sequence is longer
        longestSequence =
            longestSequence < sequenceLength ? sequenceLength : longestSequence;
      }
    }
    // Return the length of the longest consecutive sequence found
    return longestSequence;
  }
}

void main(List<String> args) {
  final object = Solution();
  final nums = <int>[0, 3, 7, 2, 5, 8, 4, 6, 0, 1];
  print(object.longestConsecutive(nums));
}
