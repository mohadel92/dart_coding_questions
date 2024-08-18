void main() {
  print(solution([5, 3, 6, 7, 9]));
}

int solution(List<int> inputArray) {
  var endOfTrack = 0;
  inputArray.sort();
  // print(inputArray);
  var jumps = [0];

  // print(jumps);

  for (var i = 0; i < inputArray.length - 1; i++) {
    if (inputArray[i + 1] > inputArray[i]) {
      endOfTrack = inputArray[i + 1];
    }
  }

  for (var i = 0; i < endOfTrack; i++) {
    if (i > inputArray[0]) {
      jumps.add(i);
      // print(i);
    }
  }
  // for(var i = inputArray.length; i > 0; i--){
  //   if(inputArray[i] )
  // }
  jumps.removeWhere((element) => inputArray.contains(element));
  print("jumps: $jumps");
  print("inputArray: $inputArray");
  var minJump = 0;
  for (var i = 0; i < jumps.length - 1; i++) {
    print("current:${jumps[i]}");
    if (((jumps[i + 1] - jumps[i]).abs() < minJump)) {
      print(jumps[i + 1] - jumps[i]);
      if (jumps[i + 1] > 0) {
        minJump = jumps[i + 1];
      }
    }
  }
  print("minJump: $minJump");
  return minJump;
}
