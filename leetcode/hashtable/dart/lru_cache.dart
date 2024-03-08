class LRUCache {
  late int _capacity;

  int get capacity => _capacity;

  Map<int, int> map = <int, int>{};

  LRUCache(int capacity) {
    _capacity = capacity;
  }

  int get(int key) {
    if (!map.containsKey(key)) {
      return -1;
    } else {
      int value = map[key]!;
      map.remove(key);
      map[key] = value;
      return value;
    }
  }

  void put(int key, int value) {
    if (map.containsKey(key)) {
      map.remove(key);
    }
    map[key] = value;
    if (capacity < map.keys.length) {
      map.remove(map.keys.first);
    }
  }
}

/**
 * Your LRUCache object will be instantiated and called as such:
 * LRUCache obj = LRUCache(capacity);
 * int param1 = obj.get(key);
 * obj.put(key,value);
 */
