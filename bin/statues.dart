/*
Ratiorg got statues of different sizes as a present from CodeMaster for his birthday, each statue having an non-negative integer size. Since he likes to make things perfect, he wants to arrange them from smallest to largest so that each statue will be bigger than the previous one exactly by 1. He may need some additional statues to be able to accomplish that. Help him figure out the minimum number of additional statues needed.

Example

For statues = [6, 2, 3, 8], the output should be
solution(statues) = 3.

Ratiorg needs statues of sizes 4, 5 and 7.

*/

void main() {
  print(solution([6, 2, 3, 8]));
}

//[2,3,6,8];
int solution(List<int> statues) {
  var missedNumbers = 0;
  var sortedArray = statues..sort();

  for (var i = 0; i < sortedArray.length - 1; i++) {
    if (sortedArray[i + 1] - sortedArray[i] == 1) {
      //do nothing
    } else {
      missedNumbers += sortedArray[i + 1] - sortedArray[i] - 1;
    }
  }
  return missedNumbers;
}
