/*
Given a string, your task is to replace each of its characters by the next one in the English alphabet; i.e. replace a with b, replace b with c, etc (z would be replaced by a).

Example

For inputString = "crazy", the output should be solution(inputString) = "dsbaz".


*/
String solution(String inputString) {
  var allChar = [
    "a",
    "b",
    "c",
    "d",
    "e",
    "f",
    "g",
    "h",
    "i",
    "j",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p",
    "q",
    "r",
    "s",
    "t",
    "u",
    "v",
    "w",
    "x",
    "y",
    "z"
  ];
  var shiftedArrChars = [];

// dsbaz
  for (var i = 0; i < inputString.length; i++) {
    var currentIndex = allChar.indexOf(inputString[i].toLowerCase());
    // print("currentIndex:${currentIndex}");
    var nextIndex = currentIndex + 1;
    if (nextIndex == 26) {
      nextIndex = 0;
    }
    var nextChar = allChar[nextIndex];
    // print(allChar[nextIndex]);
    shiftedArrChars.add(nextChar);
  }

  print(shiftedArrChars.join());
  return shiftedArrChars.join();
}

String solution2(String inputString) {
  StringBuffer result = StringBuffer();

  for (int i = 0; i < inputString.length; i++) {
    var currentChar = inputString[i];
    String nextChar;

    if (currentChar == 'z') {
      nextChar = 'a';
    } else if (currentChar == 'Z') {
      nextChar = 'A';
    } else if (currentChar.toLowerCase() != currentChar.toUpperCase()) {
      nextChar = String.fromCharCode(currentChar.codeUnitAt(0) + 1);
    } else {
      nextChar = currentChar; // Non-alphabetic characters remain unchanged
    }

    result.write(nextChar);
  }

  return result.toString();
}
