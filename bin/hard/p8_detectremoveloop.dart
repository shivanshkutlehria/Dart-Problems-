class ListNode {
  int val;
  ListNode? next;

  ListNode(this.val, [this.next]);
}

class LinkedList {
  ListNode? head;

  LinkedList([this.head]);

  void append(int value) {
    if (head == null) {
      head = ListNode(value);
    } else {
      ListNode curr = head!;
      while (curr.next != null) {
        curr = curr.next!;
      }
      curr.next = ListNode(value);
    }
  }

  bool detectandremoveloop() {
    ListNode? slow = head;
    ListNode? fast = head;

    while (fast != null && fast.next != null) {
      slow = slow!.next;
      fast = fast.next!.next;

      if (slow == fast) {
        _removeLoop(slow!);
        return true;
      }
    }
    return false;
  }

  void _removeLoop(ListNode meetingPoint) {
    ListNode? ptr1 = head;
    ListNode ptr2 = meetingPoint;

    while (ptr1 != ptr2) {
      ptr1 = ptr1!.next;
      ptr2 = ptr2.next!;
    }

    ListNode prev = ptr2;
    while (prev.next != ptr1) {
      prev = prev.next!;
    }

    prev.next = null;
  }

  void createLoop(int pos) {
    if (head == null || pos < 0) return;
    ListNode? loopNode;
    ListNode? current = head;
    int count = 0;

    while (current?.next != null) {
      if (count == pos) loopNode = current;
      current = current?.next;
      count++;
    }

    current?.next = loopNode;
  }

  void printList() {
    ListNode? current = head;
    Set<ListNode> visited = {};

    while (current != null) {
      if (visited.contains(current)) {
        print("Loop detected again!");
        break;
      }
      visited.add(current);
      print(current.val);
      current = current.next;
    }
  }
}

void main() {
  LinkedList list = LinkedList();
  list.append(1);
  list.append(2);
  list.append(3);
  list.append(4);
  list.append(5);

  list.createLoop(2);

  if (list.detectandremoveloop()) {
    print("Loop detected and removed.");
  } else {
    print("No loop detected.");
  }

  print("Linked list after removing loop:");
  list.printList();
}
