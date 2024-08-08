class ListNode {
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}

ListNode? addTwoNumbers(ListNode? l1, ListNode? l2) {
  ListNode? dummyHead = ListNode(0);
  ListNode? p = l1, q = l2, current = dummyHead;
  int carry = 0;

  while (p != null || q != null) {
    int x = (p != null) ? p.val : 0;
    int y = (q != null) ? q.val : 0;
    int sum = carry + x + y;
    carry = sum ~/ 10;
    current!.next = ListNode(sum % 10);
    current = current.next;
    if (p != null) p = p.next;
    if (q != null) q = q.next;
  }

  if (carry > 0) {
    current!.next = ListNode(carry);
  }

  return dummyHead.next;
}

void printList(ListNode? node) {
  while (node != null) {
    print(node.val);
    node = node.next;
  }
}

void main() {
  ListNode l1 = ListNode(2, ListNode(4, ListNode(3)));
  ListNode l2 = ListNode(5, ListNode(6, ListNode(4)));

  ListNode? result = addTwoNumbers(l1, l2);

  print("Результат сложения [2,4,3] + [5,6,4]:");
  printList(result); 
}