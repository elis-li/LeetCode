class ListNode {
  int value;
  ListNode? next;
  ListNode(this.value, [this.next]);
  }
  ListNode? reverseList(ListNode? head) {
  ListNode? prev = null;
  ListNode? current = head;

  while (current != null) {
    ListNode? nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }
  return prev;
  }
  void printList(ListNode? head) {
  ListNode? current = head;
  while (current != null) {
    print(current.value);
    current = current.next;
  }
}

void main() {
  ListNode list = ListNode(1, ListNode(2, ListNode(3, ListNode(4))));
  printList(list);
}