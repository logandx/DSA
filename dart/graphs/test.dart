class Person {
  String _name;

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  List<Person> _friends;

  List<Person> get friends => _friends;

  set friends(List<Person> value) {
    _friends = value;
  }

  Person(this._name) : _friends = [];

  void addFriend(Person friend) {
    if (!_friends.contains(friend)) {
      _friends.add(friend);
      // Automatically add the person as a friend of the friend
      friend.addFriend(this);
    }
  }

  void removeFriend(Person friend) {
    _friends.remove(friend);
    // Remove the person from the friend's list of friends
    friend.friends.remove(this);
  }

  bool isFriendWith(Person person) {
    return _friends.contains(person);
  }

  List<Person> commonFriendsWith(Person person) {
    return _friends.where((friend) => person.isFriendWith(friend)).toList();
  }

  @override
  String toString() {
    return '$name (Friends: ${_friends.map((friend) => friend.name).join(', ')})';
  }
}

void main() {
  var alice = Person('Alice');
  var bob = Person('Bob');
  var charlie = Person('Charlie');

  print('Before removing Alice\'s friends');
  alice.addFriend(bob);
  alice.addFriend(charlie);
  bob.addFriend(charlie);

  print(alice);
  print(bob);
  print(charlie);

  alice.removeFriend(bob);

  print('After removing Alice\'s friends');
  print(alice);
  print(bob);
  print(charlie);
}
