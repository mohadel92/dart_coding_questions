import './node.dart';

void main() {
  //creating nodes
  Node a = Node<String>(val: "a");
  Node b = Node<String>(val: "b");
  Node c = Node<String>(val: "c");
  Node d = Node<String>(val: "d");
  Node e = Node<String>(val: "e");
  Node f = Node<String>(val: "f");
  //linking nodes
  a.left = b;
  a.right = c;
  b.left = d;
  b.right = e;
  c.right = f;
  //visualzing nodes
  /*
       a
      / \ 
     b   c
    / \   \
   d   e   f
*/

  // depthFirstSearch(a);
  print(depthFirstSearchRecursive(a));
}

void depthFirstSearch(Node? root) {
  if (root == null) return;

  List<Node> myStack = [root];
  var result = "[";

  while (myStack.isNotEmpty) {
    var node = myStack.removeLast();
    // print(node.val);
    result += "${node.val},";

    if (node.right != null) myStack.add(node.right!);
    if (node.left != null) myStack.add(node.left!);
  }
  result += "]";
  print(result);
}

List<T> depthFirstSearchRecursive<T>(Node<T>? root) {
  if (root == null) return [];

  // Traverse the left subtree
  var leftValues = depthFirstSearchRecursive<T>(root.left);

  // Traverse the right subtree
  var rightValues = depthFirstSearchRecursive(root.right);

  // Combine the root value with left and right subtrees
  var rootVal = root.val;

  return [rootVal as T, ...leftValues, ...rightValues];
}
