import '../bin/dart_playground.dart';

class Car {
  final int? year;
  final String? make;
  final String? model;
  final Color? color;
  final CarPower? power;

  Car({this.year, this.make, this.model, this.color, this.power});

  @override
  String toString() {
    return '${color?.name} $make $model $year running with: ${power?.name}';
  }
}
