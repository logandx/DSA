class SortableArray {
  List<int> array = [];

  SortableArray(List<int> array) {
    this.array = array;
  }

  int partition(int leftPointer, int rightPointer) {
    // We always choose the right-most element as the pivot
    int pivotPosition = rightPointer;
    int pivot = array[pivotPosition];
    // We start the right pointer immediately to the left of the pivot
    rightPointer -= 1;
    while (true) {
      while (array[leftPointer] < pivot) {
        leftPointer += 1;
      }
      while (array[rightPointer] > pivot) {
        rightPointer -= 1;
      }
      if (leftPointer >= rightPointer) {
        break;
      } else {
        swap(leftPointer, rightPointer);
      }
    }
    // As a final step, we swap the left pointer with the pivot itself
    swap(leftPointer, pivotPosition);
    // We return the leftPointer for the sake of the quicksort method
    // which will appear later in this chapter
    return leftPointer;
  }

  void swap(int pointer1, int pointer2) {
    int tempValue = array[pointer1];
    array[pointer1] = array[pointer2];
    array[pointer2] = tempValue;
  }

  void quicksort(int leftIndex, int rightIndex) {
    if (rightIndex - leftIndex <= 0) {
      return;
    }
    int pivotPosition = partition(leftIndex, rightIndex);
    quicksort(leftIndex, pivotPosition - 1);
    quicksort(pivotPosition + 1, rightIndex);
  }
}

void main() {
  SortableArray sortableArray = SortableArray([3, 1, 4, 1, 5, 9, 2, 6, 5]);
  sortableArray.quicksort(0, 8);
  print(sortableArray.array); // Output: [1, 1, 2, 3, 4, 5, 5, 6, 9]
}
