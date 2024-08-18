//package: pure dart code
//plugin: extension written with native code (Kotlin,java)-(ObjC-swift) .extra and linked to flutter: Platform Channels(MethodChannel,EventChannel)(Out of scope)

import 'dart:async'; //Required import with duplicated  class
import 'dart:math' as math;

import 'package:faker/faker.dart';
//show,hide ,as

//! Homework: all students
// .then vs .whenComplete

// await Future.any(futures)
// await Future.error(error)
// await Future.microtask(computation)
// await Future.doWhile(action)
// await Future.value()
// await Future.wait(futures)
// await Future.sync(computation)
// await Future.forEach(elements, action)

void guessMySalary() async {
  print("Calculating.......");
  await Future.delayed(Duration(seconds: 3));
  var mySalary = math.Random().nextInt(10000);
  print("I have guessed my salary:$mySalary");
}

void playWithNumbers() async {
  print("1");
  print("2");
  print("3");
  Future.delayed(Duration(milliseconds: 700), () {
    print("4");
  });
  print("5");
  print("6");
  print("7");
}

// void parseStringAndAddAmount(
//     {required String numberAsString, required double amount}) {
//   if (numberAsString == "") {
//     return;
//   }

// // 55+5 = 60
// //parse : extract numeric value from string
//   // "55" =>55
//   // var number = double.parse(numberAsString);
//   var number = double.tryParse(numberAsString);
//   if (number == null) {
//     //Guard
//     print("number is not a valid number to parse...returning");
//     return;
//   }
//   number = number + amount;
//   print(number);
//   // number = number + amount;
//   // print(number);
// }

void parseStringAndAddAmount(
    {required String numberAsString, required double amount}) {
  if (numberAsString == "") {
    return;
  }

  try {
    var number = double.parse(numberAsString);
    number = number + amount;
    print(number);
  } on FormatException catch (e) {
    print("number is not a valid number to parse...returning with error $e");
  }
}

Future<List<String>> guessBestStudents() async {
  print("Guessing best students....");
  //check students
  //calculate grade
  //compare grades
  //get best grades
  //return students with best grades

  return Future<List<String>>.delayed(
    Duration(seconds: 3),
    () => List.generate(
      10,
      (index) {
        if (index == 5) {
          throw Exception("something went wrong");
        }
        return Faker().person.name();
      },
    ),
  );
}
