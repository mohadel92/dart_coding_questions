// Given an array of integers, find the maximal absolute difference between any two of its adjacent elements.

int solution(List<int> inputArray) {
  var diff = 0;

  for (var i = 0; i < inputArray.length - 1; i++) {
    if ((inputArray[i] - inputArray[i + 1]).abs() > diff) {
      diff = (inputArray[i] - inputArray[i + 1]).abs();
    }
  }
  return diff;
}
