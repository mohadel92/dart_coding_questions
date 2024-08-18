// Some people are standing in a row in a park. There are trees between them which cannot be moved. Your task is to rearrange the people by their heights in a non-descending order without moving the trees. People can be very tall!

List<int> solution(List<int> a) {
  var treesIndices = [];
  for (var i = 0; i < a.length; i++) {
    if (a[i] == -1) {
      treesIndices.add(i);
    }
  }
  // Remove -1s from the list (iterating backwards)
  for (var i = treesIndices.length - 1; i >= 0; i--) {
    a.removeAt(treesIndices[i]);
  }
  print(a);

  var newList = a..sort();
  for (var index in treesIndices) {
    newList.insert(index, -1);
  }
  return a;
}

void main() {
  var ex = [-1, 150, 160, 170, -1, -1, 180, 190];
  print(solution(ex));
}
