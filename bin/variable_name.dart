/*
Correct variable names consist only of English letters, digits and underscores and they can't start with a digit.

Check if the given string is a correct variable name.

Example

For name = "var_1__Int", the output should be
solution(name) = true;
For name = "qq-q", the output should be
solution(name) = false;
For name = "2w2", the output should be
solution(name) = false.
*/
bool solution(String name) {
  var validName = true;
  if (name.isEmpty == true) {
    print("name is Empty");
    return false;
  }

  var firstChar = name[0];

  if (name.contains(" ")) return false;
  var numOfFirst = int.tryParse(firstChar);

// if(numOfFirst == null){
//     print("first char is not a number");
//     return false;
// };
  if (numOfFirst != null) {
    print("first char is a number");
    return false;
  }

  var specialCharArr = [
    "*",
    ",",
    ".",
    "[",
    "]",
    "#",
    "@",
    "!",
    "\$",
    "&",
    "(",
    ")",
    "-"
  ];

  var hasSpecial = specialCharArr.any((char) => name.contains(char));

  if (hasSpecial == true) {
    print("has Special chars");
    return false;
  }

  return validName;
}
