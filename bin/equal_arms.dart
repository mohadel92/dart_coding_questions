// Call two arms equally strong if the heaviest weights they each are able to lift are equal.

// Call two people equally strong if their strongest arms are equally strong (the strongest arm can be both the right and the left), and so are their weakest arms.

// Given your and your friend's arms' lifting capabilities find out if you two are equally strong.

void main() {
  print(solution(15, 10, 15, 9));
}

bool solution(int yourLeft, int yourRight, int friendsLeft, int friendsRight) {
  var isOdd = 0;
  var map = {};
  var handsList = [yourLeft, yourRight, friendsLeft, friendsRight];
  for (var i = 0; i < handsList.length; i++) {
    var hand = handsList[i];
    if (map.containsKey(hand)) {
      map[hand] = map[hand] + 1;
    } else {
      map[hand] = 1;
    }
  }

  for (var element in map.values.toList()) {
    if (element.isOdd) {
      isOdd += 1;
    }
  }

  return isOdd == 0 && ((yourLeft + yourRight) == (friendsLeft + friendsRight));
}
