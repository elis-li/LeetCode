class ListNode{
  int val;
  ListNode? next;
  ListNode(this.val, [this.next]);
}
  ListNode? mergeTwoLists(ListNode? list1, ListNode? list2) {
    ListNode reserved = ListNode(0);
    ListNode tail = reserved;

    while (list1 != null && list2 != null){
      if (list1.val < list2.val){
        tail.next = list1;
        list1 = list1.next;
      } else{
        tail.next = list2;
        list2 = list2.next;
      }
      tail = tail.next!;
      }

      if (list1 != null){
        tail.next = list1;
      } else{
        tail.next = list2;
      }
      return reserved.next;
      }

      void printList(ListNode? node){
        while (node != null){
          print(node.val);
          node = node.next;
        }
      }
void main(){
  ListNode list1 = ListNode(1, ListNode(2,ListNode(4)));
  ListNode list2 = ListNode(1, ListNode (3, ListNode (4)));

  ListNode? mergedList = mergeTwoLists(list1, list2);
  printList(mergedList);
}


     
   


  
