class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  ListNode? removeNthFromEnd(ListNode? head, int n) {
    ListNode dummy = ListNode(0, head);
    ListNode? left = dummy;
    ListNode? right = head;

    /// Shifting right by n
    while (n > 0 && right != null) {
      right = right.next;
      n--;
    }

    /// Shifting left and right
    while (right != null) {
      right = right.next;
      left = left?.next;
    }

    // Assign left's next pointer equals to its next pointer
    // left
    // 1 -> 2 -> 3
    // left is in 1 so its next pointer is 3
    left?.next = left.next?.next; 
    return dummy.next;
  }
}

void main(List<String> args) {
  ListNode head = ListNode(1);
  head.next = ListNode(2);
  head.next = ListNode(3);
  head.next = ListNode(4);
  head.next = ListNode(5);
  final n = 2;
  final object = Solution();
  print(object.removeNthFromEnd(head, n));
}
