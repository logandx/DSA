class Node<T> {
  T data;
  Node<T>? nextNode;
  Node<T>? previousNode;

  Node(this.data);
}

class DoublyLinkedList<T> {
  Node<T>? firstNode;
  Node<T>? lastNode;

  DoublyLinkedList([this.firstNode, this.lastNode]);

  void insertAtEnd(T value) {
    var newNode = Node<T>(value);
    if (firstNode == null) {
      firstNode = newNode;
      lastNode = newNode;
    } else {
      newNode.previousNode = lastNode;
      lastNode!.nextNode = newNode;
      lastNode = newNode;
    }
  }

  Node<T>? removeFromFront() {
    var removedNode = firstNode;
    firstNode = firstNode!.nextNode;
    return removedNode;
  }
}

class Queue<T> {
  DoublyLinkedList<T> queue = DoublyLinkedList<T>();

  void enqueue(T value) {
    queue.insertAtEnd(value);
  }

  T dequeue() {
    var removedNode = queue.removeFromFront();
    if (removedNode != null) {
      return removedNode.data;
    } else {
      throw Exception("Queue is empty");
    }
  }

  T? tail() {
    return queue.lastNode?.data;
  }
}

void main() {
  var myQueue = Queue<int>();
  myQueue.enqueue(5);
  myQueue.enqueue(10);
  myQueue.enqueue(15);
  print(myQueue.dequeue()); // Output: 5
  print(myQueue.dequeue()); // Output: 10
  print(myQueue.tail()); // Output: 15
}
