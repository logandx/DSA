class Node<T> {
  T data;
  Node<T>? nextNode;

  Node(this.data);
}

class LinkedList<T> {
  Node<T> firstNode;

  LinkedList(this.firstNode);

  /// Reading the value
  T? read(int index) {
    Node<T>? currentNode = firstNode;
    int currentIndex = 0;

    while (currentIndex < index) {
      if (currentNode == null) {
        return null; // Return null if index is out of bounds
      }
      currentNode = currentNode.nextNode;
      currentIndex++;
    }

    return currentNode?.data; // Return data if found, otherwise null
  }

  int? indexOf(T value) {
    Node<T>? currentNode = firstNode;
    int currentIndex = 0;

    while (currentNode != null) {
      if (currentNode.data == value) {
        return currentIndex;
      }
      currentNode = currentNode.nextNode;
      currentIndex++;
    }

    return null; // Return null if value is not found
  }

  void insertAtIndex(int index, T value) {
    if (index < 0) {
      throw ArgumentError('Index cannot be negative');
    }

    Node<T>? currentNode = firstNode;
    int currentIndex = 0;

    var bool = currentIndex < index - 1;
    while (currentNode != null && bool) {
      currentNode = currentNode.nextNode;
      print('current node iteration: $currentNode  ');
      currentIndex++;
    }
    print("current node data: ${currentNode?.data}");

    if (currentNode == null) {
      throw ArgumentError('Index out of bounds');
    }

    Node<T> newNode = Node<T>(value); // 5 - NEXT: null
    newNode.nextNode = currentNode.nextNode; // nextNode of 5 =  5 + 2, 3
    currentNode.nextNode = newNode; // 1 [2 3] -> take [5 2 3] -> 1 5 2 3
    print("newNode: ${newNode.data}");
  }

  void deleteAtIndex(int index) {
    if (index < 0) {
      throw ArgumentError('Index cannot be negative');
    }

    Node<T>? currentNode = firstNode;
    int currentIndex = 0;

    // Find the node immediately before the node to delete
    while (currentNode != null && currentIndex < index - 1) {
      currentNode = currentNode.nextNode;
      currentIndex++;
    }

    if (currentNode == null ||
        currentNode.nextNode == null ||
        currentNode.nextNode?.nextNode == null) {
      throw ArgumentError('Index out of bounds or cannot delete last node');
    }

    // Find the node that comes after the node to delete
    Node<T>? nodeAfterDeletedNode = currentNode.nextNode?.nextNode;

    // Change the link of the currentNode to point to the nodeAfterDeletedNode
    // This effectively removes the node to delete from the list
    currentNode.nextNode = nodeAfterDeletedNode;
  }
}

void main() {
  Node<int> node1 = Node<int>(1);
  Node<int> node2 = Node<int>(2);
  Node<int> node3 = Node<int>(3);

  node1.nextNode = node2;
  node2.nextNode = node3;

  LinkedList<int> linkedList = LinkedList<int>(node1);
  linkedList.insertAtIndex(1, 5); // Insert 5 at index 1

  print(linkedList.read(0)); // Output: 1
  print(linkedList.read(1)); // Output: 2
  print(linkedList.read(2)); // Output: 3
  print(linkedList.read(3)); // Output: null (out of bounds)
  print('----');
  print(linkedList.indexOf(1)); // Output: 0
  print(linkedList.indexOf(2)); // Output: 1
  print(linkedList.indexOf(3)); // Output: 2
  print(linkedList.indexOf(4)); // Output: null (not found)
  print('----');
  linkedList.deleteAtIndex(1);
}
