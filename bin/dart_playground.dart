//Valued Enums : Extra
//Futures
//types of  futures
//.then(..,{..}) .whenCompleted()
//overriding
//continue hint of classes
//copyWith(..) immutable object
//try..catch
//parsing
//revision HOF
//package plugin
//show ,hide ,as while dealing with imports
//async await (see above)
//Faker : intro how to add package: flutter pub add <<package name>>,pub.dev:copy paste package to pubspec.yaml,Command Palette : add dep..
//Rev extensions

//8 hours: OOP;
//DateTime:DOne
//TimeOfDay: Delayed
//compare date:DOne
//extension :Done
//Generics: DOne
//is : DOne

//codelabs
//Futures
//hint classes

import '../bin/car.dart';
import '../bin/person.dart';

void main(List<String> arguments) async {
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  // print(getMiddleElement(numbers));

  var firstPerson = Person(name: 'John', age: 25, gender: Gender.male);
  var secondPerson = Person(name: "Samir", age: 30, gender: Gender.male);

  print(firstPerson.gender == secondPerson.gender);

  List<Community> femminestDream =
      Community.values.where((person) => person != Community.male).toList();

  var oldSamy = Person.oldMan(
    name: "Samy",
  );
  var oldMario = oldSamy.copyWith(name: "Mario");
  print(oldMario);
  print(oldSamy);

  // print(femminestDream);

  // print(getfirstAndLast([1, 2, 3]));
  // print(getfirstAndLast(["Ali", "Alyian", "Alireza"]));
  // print(getfirstAndLast([true, false, true]));

  // print(getGenericFirstAndLast<double>([22.4, 55.3, 44.1]));
  // print(getGenericFirstAndLast(["a", "b", "c"]));

  // print(1250.0.toUSD());

  // print(["Ali", "Alyian", "Alireza"].explain()); //Ext

  var currentDay = DateTime.now();

  // print(currentDay); // intl
  // print(currentDay.humanReadableDate); // intl

  // print(currentDay.getFormattedDate()); // intl

  // print(DateTime(1990, 10, 25).isAfterAlexandriaEarthQuake()); // intl

  var secondDayInTheNextYear = DateTime(2025, 1, 2);

  // print(secondDayInTheNextYear.day);
  // print(secondDayInTheNextYear.month);
  // print(secondDayInTheNextYear.year);

  // print(DateTime.fromMillisecondsSinceEpoch(1720116837000)); //!!!Extra
  // print(currentDay.add(Duration(days: 5)));

  var minAgeInOurAppInYears = 18;
  var daysInYear = 365;
  var minAgeInOurAppInDays = minAgeInOurAppInYears * daysInYear;
  var minAgeToSignUp =
      DateTime.now().subtract(Duration(days: minAgeInOurAppInDays));
  // print(minAgeToSignUp);
  //DateTIme,TimeOfDay,Duration

  // var childBD = DateTime(2015, 5, 25);

  List<Car> cars = [
    Car(
        make: "Tesla",
        model: "Model S",
        year: 2017,
        color: Color.red,
        power: CarPower.electric),
    Car(
        make: "Toyota",
        model: "Corolla",
        year: 2022,
        color: Color.red,
        power: CarPower.hybrid),
    Car(
        make: "Fiat",
        model: "132",
        year: 1979,
        color: Color.grey,
        power: CarPower.gasoline),
    Car(
        make: "Toyota",
        model: "Corolla",
        year: 2022,
        color: Color.red,
        power: CarPower.hybrid),
    Car(
        make: "BMW",
        model: "X5 XDrive",
        year: 2023,
        color: Color.blue,
        power: CarPower.plugInHybrid),
    Car(
        make: "ElQsrawy",
        model: "King Long",
        year: 2020,
        color: Color.white,
        power: CarPower.diesel),
    Car(
        make: "Audi",
        model: "A4",
        year: 2018,
        color: Color.black,
        power: CarPower.gasoline),
    Car(
        make: "Ford",
        model: "Mustang",
        year: 1969,
        color: Color.yellow,
        power: CarPower.gasoline),
    Car(
        make: "Chevrolet",
        model: "Bolt EV",
        year: 2021,
        color: Color.green,
        power: CarPower.electric),
    Car(
        make: "Honda",
        model: "Accord",
        year: 2020,
        color: Color.white,
        power: CarPower.hybrid),
    Car(
        make: "Hyundai",
        model: "Sonata",
        year: 2021,
        color: Color.silver,
        power: CarPower.gasoline),
    Car(
        make: "Kia",
        model: "Sorento",
        year: 2022,
        color: Color.blue,
        power: CarPower.plugInHybrid),
    Car(
        make: "Mercedes-Benz",
        model: "E-Class",
        year: 1985,
        color: Color.grey,
        power: CarPower.gasoline),
    Car(
        make: "Nissan",
        model: "Leaf",
        year: 2022,
        color: Color.green,
        power: CarPower.electric),
    Car(
        make: "Porsche",
        model: "Taycan",
        year: 2021,
        color: Color.white,
        power: CarPower.electric),
    Car(
        make: "Jaguar",
        model: "XF",
        year: 2020,
        color: Color.red,
        power: CarPower.diesel),
    Car(
        make: "Land Rover",
        model: "Range Rover Evoque",
        year: 2023,
        color: Color.blue,
        power: CarPower.gasoline),
    Car(
        make: "Volvo",
        model: "XC40",
        year: 2021,
        color: Color.black,
        power: CarPower.electric),
    Car(
        make: "Mazda",
        model: "CX-5",
        year: 2019,
        color: Color.white,
        power: CarPower.gasoline),
    Car(
        make: "Subaru",
        model: "Outback",
        year: 2022,
        color: Color.grey,
        power: CarPower.gasoline),
    Car(
        make: "Volkswagen",
        model: "ID.4",
        year: 2021,
        color: Color.silver,
        power: CarPower.electric),
    Car(
        make: "Genesis",
        model: "G70",
        year: 2020,
        color: Color.blue,
        power: CarPower.gasoline),
    Car(
        make: "Mini",
        model: "Cooper SE",
        year: 2022,
        color: Color.yellow,
        power: CarPower.electric),
    Car(
        make: "Tesla",
        model: "Model 3",
        year: 2022,
        color: Color.black,
        power: CarPower.electric),
    Car(
        make: "Toyota",
        model: "Prius",
        year: 2021,
        color: Color.green,
        power: CarPower.hybrid),
    Car(
        make: "Ford",
        model: "F-150",
        year: 2023,
        color: Color.red,
        power: CarPower.gasoline),
    Car(
        make: "Chevrolet",
        model: "Silverado",
        year: 2019,
        color: Color.blue,
        power: CarPower.diesel),
    Car(
        make: "Honda",
        model: "Civic",
        year: 2022,
        color: Color.grey,
        power: CarPower.gasoline),
    Car(
        make: "Hyundai",
        model: "Ioniq 5",
        year: 2023,
        color: Color.white,
        power: CarPower.electric),
    Car(
        make: "Kia",
        model: "Niro",
        year: 2022,
        color: Color.green,
        power: CarPower.hybrid),
    Car(
        make: "Mercedes-Benz",
        model: "EQC",
        year: 2021,
        color: Color.black,
        power: CarPower.electric),
    Car(
        make: "Nissan",
        model: "Rogue",
        year: 2022,
        color: Color.blue,
        power: CarPower.gasoline),
    Car(
        make: "Porsche",
        model: "Macan",
        year: 2020,
        color: Color.red,
        power: CarPower.gasoline),
    Car(
        make: "Jaguar",
        model: "I-PACE",
        year: 2022,
        color: Color.grey,
        power: CarPower.electric),
    Car(
        make: "Land Rover",
        model: "Defender",
        year: 2023,
        color: Color.silver,
        power: CarPower.gasoline),
    Car(
        make: "Volvo",
        model: "XC90",
        year: 2021,
        color: Color.blue,
        power: CarPower.plugInHybrid),
    Car(
        make: "Mazda",
        model: "MX-30",
        year: 2021,
        color: Color.red,
        power: CarPower.electric),
    Car(
        make: "Subaru",
        model: "Crosstrek",
        year: 2022,
        color: Color.white,
        power: CarPower.gasoline),
    Car(
        make: "Volkswagen",
        model: "Passat",
        year: 2020,
        color: Color.black,
        power: CarPower.gasoline),
    Car(
        make: "Genesis",
        model: "GV70",
        year: 2023,
        color: Color.green,
        power: CarPower.gasoline),
    Car(
        make: "Mini",
        model: "Countryman",
        year: 2022,
        color: Color.yellow,
        power: CarPower.plugInHybrid),
  ];

  var bimmers = cars.where((car) => car.make == "BMW");

  var electricCars = cars.where((car) => car.power == CarPower.electric);

  var classicCars = cars.where((cars) => (cars.year ?? 0) < 1990);

  // print("bimmers:$bimmers");

  // print("cars:${cars.take(10)}");
  // print("electric:$electricCars");

  // print(tesla.year);

  // print(childBD.isBefore(minAgeToSignUp));

  // print("date submitted to backend: ${childBD.toBackEndDate()}");

  // playWithDataTypes([1, 2, 3]);

  // guessMySalary();
  // playWithNumbers();
  // parseStringAndAddAmount(amount: 5, numberAsString: "12");
  // var bestStudents = await guessBestStudents();
  // print(bestStudents);
  // guessBestStudents().then((List<String> bestStudents) {
  //   //Promises
  //   print(bestStudents.first);
  // }, onError: (error) {
  //   print(error);
  // });

  List<String> myList = <String>[];
  List<String> myList2 = List.empty(growable: true);
  List<Map<String, int>> myList3 =
      List.generate(10, (index) => {"element$index": index});
  var unModifiedList = List.unmodifiable([1, 2, 3, 4]);
  unModifiedList.add(5);
  print(unModifiedList);
  // print(myList3);
}

// Map<String, int> orderIds = {
//   "shipped": 1,
//   "cancelled": -1,
//   "processing": 0,
//   "delivered": 2,
// };

(Object, Object) getfirstAndLast(List<Object> listOfElements) {
  //!!!Extra
  return (listOfElements.first, listOfElements.last);
}

//Generics

(T, T) getGenericFirstAndLast<T>(List<T> listOfElements) {
  //!!!Extra
  return (listOfElements.first, listOfElements.last);
}

// ({Object first, Object last}) getfirstAndLastNamed(List<Object> listOfElements) {
//   return (first:listOfElements.first,last: listOfElements.last);
// }

int? getMiddleElement(List<int?>? list) {
  if (list == null) {
    return null; //Guarding => after this line list can't be null
  }
  if (list.length == 1) return list.single;
  var middleIndex = list.length ~/ 2;
  return list[middleIndex];
}

void playWithDataTypes(dynamic type) {
  if (type is int) {
    print("the previous value is $type is ${type - 1}");
  } else if (type is List) {
    print("the length of the list is ${type.length}");
  } else if (type is bool) {
    print("the opposite value is ${!(type)}");
  } else if (type is String) {
    print(" i hate dealing with String value is $type");
  } else {
    print("I don't know the type $type");
  }
}

enum Color { red, green, blue, white, yellow, silver, grey, black }

enum Community { male, female, eldery, children }

enum OrderStatus { shipped, cancelled, processing, delivered }

enum Theme { dark, light }

enum ServiceProvider { doctor, nurse, lab }

enum CarPower { electric, gasoline, diesel, hybrid, plugInHybrid }

//  \ escape character
extension CurrencyExtension on double {
  //!!!Extra
  String toUSD() {
    return "the amount : \"\$$this in USD\"";
  }
}

extension ExplainExtension<T> on T {
  //!!!Extra
  String explain() {
    return "the value of me is $this and my datatype is $runtimeType";
  }
}

extension DateExtension on DateTime {
  //!!!Extra
  get humanReadableDate => '$day/$month/$year';

  String getFormattedDate() {
    return '$year-$month-$day';
  }

  String toBackEndDate() {
    return "$year/$month/$day";
  }

  bool isAfterAlexandriaEarthQuake() {
    //!!!Extra
    return isAfter(DateTime(1992, 10, 12));
  }
}
