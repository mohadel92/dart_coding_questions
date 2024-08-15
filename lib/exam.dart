void main() {
  var hastags = [
    "#MondayMotivation",
    "#MondayMotivation",
    "#TuesdayThoughts",
    "#TuesdayThoughts",
    "#WednesdayWisdom",
    "#WednesdayWisdom",
    "#WednesdayWisdom",
    "#ThrowbackThursday",
    "#FridayFeeling",
    "#FridayFeeling",
    "#SaturdayVibes",
    "#SundayFunday",
    "#SundayFunday",
    "#MotivationMonday",
    "#WellnessWednesday",
    "#WellnessWednesday",
    "#FlashbackFriday",
    "#FlashbackFriday",
    "#SelfcareSunday",
    "#WorkoutWednesday",
    "#WorkoutWednesday",
    "#TransformationTuesday",
    "#TransformationTuesday",
    "#FollowFriday",
    "#WeekendVibes",
    "#MondayBlues",
    "#MondayBlues",
    "#SundayScaries",
    "#SaturdayMorning",
    "#SaturdayMorning",
    "#TGIF",
    "#TGIF",
    "#HumpDay",
    "#HumpDay",
    "#HumpDay"
  ];

  var hastagsMap = checkRepeatedHastags(hastags: hastags, n: 3);

  print(hastagsMap);
}

Map<String, int> checkRepeatedHastags(
    {required List<String> hastags, required int n}) {
  Map<String, int> repeatedMap = <String, int>{};

  for (var tag in hastags) {
    if (repeatedMap.containsKey(tag)) {
      repeatedMap[tag] = (repeatedMap[tag] ?? 0) + 1;
    } else {
      repeatedMap[tag] = 1;
    }
  }
  var sortedEntries = repeatedMap.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));
  if (n <= sortedEntries.length) {
    sortedEntries = sortedEntries.take(n).toList();
  } else {
    throw Exception("n should be less than ${sortedEntries.length}");
  }

  // Reconstruct the map in sorted order
  var sortedHashtagsMap = Map<String, int>.fromEntries(sortedEntries);

  return sortedHashtagsMap;
}
