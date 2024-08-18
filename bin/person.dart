class Person {
  //!!!Extra
  final String? name;
  final int? age;
  final Gender? gender;

  const Person({
    this.name,
    this.age,
    this.gender,
  });

  Person.oldMan({
    this.name,
  })  : age = 100,
        gender = Gender.male;
  Person.oldFemale({
    this.name,
  })  : age = 100,
        gender = Gender.female;

  Person copyWith({
    String? name,
    int? age,
    Gender? gender,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
      gender: gender ?? this.gender,
    );
  }

  // Person copyWith({
  //   "ALiaa",

  // }) {
  //   return Person(
  //     name: "Aliaa" ?? "Samy",
  //     age: null ?? 100,
  //     gender:null ?? "male",
  //   );
  // }
  // Person("Aliaa",100,male)

  @override
  toString() {
    return "Person{name:$name,gender:${gender?.name},age:$age}";
  }
}
//super enums
//badge
//tuplues: records

///EXTRA El Extra
enum Gender {
  male((color: "blue", id: 1)),
  female((color: "female", id: 0)),
  unselected((color: "grey", id: -1));

  const Gender(this.value);
  final ({String? color, int? id}) value;
}

class AppConstants {
  // const AppConstants._();
  static const String apName = "AlMajd App";
  static const String appVersion = "1.1.4";
}
