// Write a Dart program to serialize a binary tree into a string and deserialize the string back to a
//binary tree structure.

class Treenode {
  int val;
  Treenode? left;
  Treenode? right;

  Treenode(this.val, [this.left, this.right]);
}

class op {
  String serialize(Treenode? root) {
    List<String> result = [];
    void helper(Treenode? node) {
      if (node == null) {
        result.add("null");
        return;
      }
      result.add(node.val.toString());
      helper(node.left);
      helper(node.right);
    }

    helper(root);
    return result.join(",");
  }

  Treenode? deserialize(String data) {
    List<String> nodes = data.split(',');
    int i = 0;
    Treenode? helper() {
      if (i >= nodes.length || nodes[i] == "null") {
        i++;
        return null;
      }
      Treenode node = Treenode(int.parse(nodes[i++]));
      node.left = helper();
      node.right = helper();
      return node;
    }

    return helper();
  }
}
void main() {
  Treenode root = Treenode(1, Treenode(2), Treenode(3, Treenode(4), Treenode(5)));

  op ope = op();
  String serialized = ope.serialize(root);
  print("Serialized Tree: $serialized");

  Treenode? deserialized = ope.deserialize(serialized);
  print("Deserialized Tree Root Value: ${deserialized?.val}");
}