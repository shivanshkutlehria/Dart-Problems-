//Design a class LRUCache in Dart that supports the following operations in O(1) time:
//get(key)
//put(key, value)
//Use a Map and LinkedHashMap to simulate Least Recently Used (LRU) cache behavior.

import 'dart:collection';

class LRUcache<K, V> {
  final int capacity;
  final _cache = LinkedHashMap<K, V>();
  LRUcache(this.capacity);

  V? get(K key) {
    if (!_cache.containsKey(key)) return null;

    V value = _cache.remove(key)!;
    _cache[key] = value;
    return value;
  }

  void put(K key, V value) {
    if (_cache.containsKey(key)) {
      _cache.remove(key);
    } else if (_cache.length >= capacity) {
      _cache.remove(_cache.keys.first);
    }
    _cache[key] = value;
  }

  void displayCache() {
    print('Current Cache: $_cache');
  }
}
void main(){
  final lru = LRUcache<int, String>(3);

  lru.put(1, 'One');
  lru.put(2, 'Two');
  lru.put(3, 'Three');
  lru.displayCache();
  print(lru.get(2));
  lru.displayCache();
  lru.put(4, 'Four');
  lru.displayCache();
}