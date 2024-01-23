import 'string_trie.dart';

void main(List<String> args) {
  final trie = StringTrie();
  trie.insert('car');
  trie.insert('card');
  trie.insert('care');
  trie.insert('cared');
  trie.insert('cars');
  trie.insert('carbs');
  trie.insert('carapace');
  trie.insert('cargo');

  print('Collections starting with "car"');
  final prefixedWithCar = trie.matchPrefix('car');
  print(prefixedWithCar);

  print('\nCollections starting with "care"');
  final prefixedWithCare = trie.matchPrefix('care');
  print(prefixedWithCare);
}
