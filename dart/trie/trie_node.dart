/// Represents a node in a trie data structure.
class TrieNode<T> {
  /// Constructs a [TrieNode] with the given [key] and [parent].
  TrieNode({
    this.key,
    this.parent,
  });

  /// The key associated with this node.
  T? key;

  /// Reference to the parent node in the trie.
  TrieNode<T>? parent;

  /// Map of child nodes, where the key is the value associated with the child node.
  Map<T, TrieNode<T>> children = {};

  /// Indicates whether this node is a terminating node in the trie.
  bool isTerminating = false;
}
