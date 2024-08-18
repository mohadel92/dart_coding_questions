/*
Check if all digits of the given integer are even.

Example

For n = 248622, the output should be
solution(n) = true;
For n = 642386, the output should be
solution(n) = false.

*/
bool solution(int n) {
  var stringNum = n.toString();
  var numListString = stringNum.split("");
  var numList = numListString.map((numString) => int.parse(numString));

  var allEven = numList.every((number) => number.isEven);

  return allEven;
}
