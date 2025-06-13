// detecting cycles in linked list using hashset
import 'dart:collection';

class Node {
  int data;
  Node? next;

  Node(this.data);
}

bool detectcycle(Node? head) {
  Set<Node> visited = HashSet();
  Node? current = head;
  while (current != null) {
    if (visited.contains(current)) {
      return true;
    }
    visited.add(current);
    current = current.next;
  }
  return false;
}

void main() {
  Node node1 = Node(1);
  Node node2 = Node(2);
  Node node3 = Node(3);
  Node node4 = Node(4);

  node1.next = node2;
  node2.next = node3;
  node3.next = node4;

  node4.next = node2;
  print("Does the list have a cycle? ${detectcycle(node1)}");
}
