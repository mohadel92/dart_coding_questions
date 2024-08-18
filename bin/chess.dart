/*
Given two cells on the standard chess board, determine whether they have the same color or not.

Example

For cell1 = "A1" and cell2 = "C3", the output should be
solution(cell1, cell2) = true.
*/
bool solution(String cell1, String cell2) {
  // Convert column letter to a number (A -> 1, B -> 2, ..., H -> 8)
  int col1 = cell1[0].toLowerCase().codeUnitAt(0) - 'a'.codeUnitAt(0) + 1;
  int col2 = cell2[0].toLowerCase().codeUnitAt(0) - 'a'.codeUnitAt(0) + 1;

  // Extract the row number
  int row1 = int.parse(cell1[1]);
  int row2 = int.parse(cell2[1]);

  // Check if both cells have the same color
  return (col1 + row1) % 2 == (col2 + row2) % 2;
}

bool badSolution(String cell1, String cell2) {
  // var cellMap = {
  //     "a" : 0,
  //     "b" : 1,
  //     "c" : 2,
  //     "d" : 3,
  //     "e" : 4,
  //     "f" : 5,
  //     "g" : 6,
  //     "h" : 7,
  // }
  var key1 = cell1[0].toLowerCase();
  var key2 = cell2[0].toLowerCase();

  int? num1 = int.parse(cell1[1]);
  int? num2 = int.parse(cell2[1]);

  var cellMap = {
    "a": 0,
    "b": 1,
    "c": 2,
    "d": 3,
    "e": 4,
    "f": 5,
    "g": 6,
    "h": 7,
  };
  if (key1 == key2) {
    if (num1.isOdd == num2.isOdd) {
      return true;
    } else if (num1.isEven == num2.isEven) {
      return true;
    } else {
      return false;
    }
  }

  if (cellMap[key1]!.isEven && cellMap[key2]!.isEven) {
    if (num1.isEven == num2.isEven) {
      return true;
    } else if (num1.isOdd == num2.isOdd) {
      return true;
    } else {
      return false;
    }
  }

  if (cellMap[key1]!.isOdd && cellMap[key2]!.isOdd) {
    if (num1.isEven == num2.isEven) {
      return true;
    } else if (num1.isOdd == num2.isOdd) {
      return true;
    } else {
      return false;
    }
  }

  if (cellMap[key1]!.isEven && cellMap[key2]!.isOdd) {
    if (num1.isEven == num2.isEven) {
      return false;
    } else if (num1.isOdd == num2.isOdd) {
      return false;
    } else {
      return true;
    }
  }

  if (cellMap[key1]!.isOdd && cellMap[key2]!.isEven) {
    if (num1.isEven == num2.isEven) {
      return false;
    } else if (num1.isOdd == num2.isOdd) {
      return false;
    } else {
      return true;
    }
  }
  return true;
}
