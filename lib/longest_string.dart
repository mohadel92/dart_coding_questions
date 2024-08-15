// Given an array of strings, return another array containing all of its longest strings.

// Example

// For inputArray = ["aba", "aa", "ad", "vcd", "aba"], the output should be
// solution(inputArray) = ["aba", "vcd", "aba"].

List<String> solution(List<String> inputArray) {
  Map<int, List<String>> myMap = {};
  for (var input in inputArray) {
    myMap[input.length] = [...?myMap[input.length], input];
  }

  var sortedMap = myMap.entries.toList()
    ..sort((a, b) => b.key.compareTo(a.key));

  return sortedMap.first.value;
}

List<String> allLongestStrings(List<String> inputArray) {
  // Step 1: Find the maximum length of the strings
  int maxLength = 0;
  for (String s in inputArray) {
    if (s.length > maxLength) {
      maxLength = s.length;
    }
  }

  // Step 2: Filter the list to include only strings with the maximum length
  List<String> longestStrings = [];
  for (String s in inputArray) {
    if (s.length == maxLength) {
      longestStrings.add(s);
    }
  }

  return longestStrings;
}

void main() {
  List<String> inputArray = ["aba", "aa", "ad", "vcd", "aba"];
  print(allLongestStrings(inputArray)); // Output: ['aba', 'vcd', 'aba']
}
