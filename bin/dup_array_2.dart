void main() {
  Map<int, int> numbersMap = <int, int>{};
  List<int> res = <int>[];
  var nums = [1, 1, 1, 2, 2, 3];
//   print(nums);

  for (var i = 0; i < nums.length; i++) {
    if (numbersMap.containsKey(nums[i])) {
      numbersMap[nums[i]] = (numbersMap[nums[i]] ?? 0) >= 2
          ? (numbersMap[nums[i]] ?? 0)
          : (numbersMap[nums[i]] ?? 0) + 1;
    } else {
      numbersMap[nums[i]] = 1;
    }
  }
//   print(numbersMap);

  numbersMap.forEach((k, v) {
    for (var i = 0; i < v; i++) {
      res.add(k);
    }
  });

  print(res);
// return res;
}
