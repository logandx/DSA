import 'dart:collection';

class Person {
  late String _name;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  late List<Person> _friends;

  List<Person> get friends => _friends;

  set friends(List<Person> value) {
    _friends = value;
  }

  late bool _visited;

  bool get visited => _visited;

  set visited(bool value) {
    _visited = value;
  }

  Person(
    this._name,
  ) {
    _friends = [];
    _visited = false;
  }

  void addFriend(Person friend) {
    _friends.add(friend);
  }

  void displayNetwork() {
    //  We keep track of every node we ever visit, so we can reset their
    // 'visited' attribute back to false after our algorithm is complete:
    List<Person> toReset = [this];
    // Create the queue. It starts out containing the root vertex:
    Queue<Person> queue = Queue<Person>();
    queue.add(this);
    _visited = true;

    while (queue.isNotEmpty) {
      // The current vertex is whatever is removed from the queue
      Person currentVertex = queue.removeFirst();
      print(currentVertex.name);

      // We add all adjacent vertices of the current vertex to the queue:
      for (Person friend in currentVertex.friends) {
        if (!friend.visited) {
          toReset.add(friend);
          queue.add(friend);
          friend.visited = true;
        }
      }
    }

    // After the algorithm is complete, we reset each
    // node's 'visited' attribute to false:
    for (Person node in toReset) {
      node.visited = false;
    }
  }
}

void main() {
  // Example usage
  Person person1 = Person('Alice');
  Person person2 = Person('Bob');
  Person person3 = Person('Charlie');
  Person person4 = Person('David');

  person1.addFriend(person2);
  person1.addFriend(person3);
  person2.addFriend(person4);
  person3.addFriend(person4);

  person1.displayNetwork();
}
