void main() {}

bool solution(String inputString) {
  var myMap = {};
  var middleItemMirror = 0;
  for (var i = 0; i < inputString.length; i++) {
    var char = inputString[i];
    if (myMap.containsKey(char)) {
      myMap[char] = myMap[char]! + 1;
    } else {
      myMap[char] = 1;
    }
  }
  var mapValues = myMap.values.toList();
  for (var element in mapValues) {
    if (element.isOdd) {
      middleItemMirror += 1;
    }
  }
  return middleItemMirror <= 1;
}
