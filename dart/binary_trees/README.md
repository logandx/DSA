# Binary Trees
- We want a data structure that maintains order, and also has fast search, insertion, and deletion? Neither an ordered array nor a hash table is ideal. ->> Binary Trees.

## RULE:
- Each node has either zero, one, or two children.
- If a node has two children, it must have one child that has a lesser value than the parent, and one child that has a greater value than the parent. For example:
                50
              /      \
            25         75
           / \         / \
          10  33      56  89
         / \  / \     / \  / \
        4  11 30 40  52 61 82 95
- When searching a tree, we must always begin at the root 