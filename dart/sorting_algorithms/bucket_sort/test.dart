class Solution {
  List<double> bucketSort(List<double> nums) {
    // Create buckets
    final int numBuckets = nums.length;
    final List<List<double>> buckets = List.generate(numBuckets, (_) => []);
    print(buckets);

    // Distribute elements into buckets
    for (var element in nums) {
      int bucketIndex = (element * numBuckets).toInt();
      if (bucketIndex == numBuckets) {
        bucketIndex--;
      }
      buckets[bucketIndex].add(element);
      print('buckets: $buckets');
    }

    // Sort individual buckets
    for (var bucket in buckets) {
      print('each bucket: $bucket');
      bucket.sort();
      print('sorted: $bucket');
 
    }

    // Concatenate sorted buckets
    final List<double> result = [];
    for (var bucket in buckets) {
      result.addAll(bucket);
    }

    return result;
  }
}

void main() {
  final solution = Solution();
  final nums = [0.78, 0.17, 0.39, 0.26, 0.72, 0.94, 0.21, 0.12, 0.23, 0.68];
  final sortedNums = solution.bucketSort(nums);
  print(sortedNums);
}
