import 'trie_node.dart';

class StringTrie {
  TrieNode<int> root = TrieNode();

  void insert(String text) {
    var current = root;
    for (var codeUnit in text.codeUnits) {
      current.children[codeUnit] ??= TrieNode(
        key: codeUnit,
        parent: current,
      );
      current = current.children[codeUnit]!;
    }

    current.isTerminating = true;
  }

  bool contains(String text) {
    var current = root;
    for (var codeUnit in text.codeUnits) {
      final child = current.children[codeUnit];
      if (child == null) {
        return false;
      }
      current = child;
    }
    return current.isTerminating;
  }

  void remove(String text) {
    var current = root;
    for (var codeUnit in text.codeUnits) {
      final child = current.children[codeUnit];
      if (child == null) {
        return;
      }
      current = child;
    }
    if (!current.isTerminating) {
      return;
    }
    current.isTerminating = false;

    while (current.parent != null &&
        current.children.isEmpty &&
        !current.isTerminating) {
      current.parent!.children.remove(current.key);
      current = current.parent!;
    }
  }

  List<String> matchPrefix(String prefix) {
    //1
    var current = root;
    for (var codeUnit in prefix.codeUnits) {
      final child = current.children[codeUnit];
      if (child == null) {
        return [];
      }
      current = child;
    }
    return _moreMatches(prefix, current);
  }

  List<String> _moreMatches(String prefix, TrieNode<int> node) {
    //1
    List<String> results = [];
    if (node.isTerminating) {
      results.add(prefix);
    }
    //2
    for (var child in node.children.values) {
      final codeUnit = child.key!;
      results.addAll(
        _moreMatches(
          '$prefix${String.fromCharCode(codeUnit)}',
          child,
        ),
      );
    }

    return results;
  }
}
