import 'package:dart_app/dart_app.dart' as dart_app;
import '../classes/car.dart';
import '../classes/employee.dart';
import '../classes/point.dart';
import 'dart:math';

late String description;
late String descriptionTwo;

void main(List<String> arguments) {
  description = "Hello World";
  print('$description: ${dart_app.calculate()}!');
  var number = 42;
  printInteger(number);
  int lineCount = 0;
  // assert(lineCount == null);
  bool aBool = true;
  bool anotherBool = false;

  List<Car> carList = [
        Car("Everest", 1, false, 0),
        Car("Toyota", 2, false, 0),
	      Car("Honda", 3, false, 0),
	      Car("Tesla", 4, true, 0),
        Car("Ford", 5, false, 0)
  ];

  var len = carList.length;

  //var car1 = Car("Everest", 1, false, 0);
	//var car2 = Car("Toyota", 2, false, 0);
	//var car3 = Car("Honda", 3, false, 0);
	//var car4 = Car("Tesla", 4, true, 0);
  //var car5 = Car("Ford", 5, false, 0);

	//var carList = [car1, car2, car3, car4, car5];
  print("");
  for(var i = 0; i< carList.length; i++) {
    print("${carList[i].name} ${carList[i].id} is electric ? ${carList[i].isElectric}");
  }
  print("");
  //startingCars(carList);
  //car1.start();
  //car1.runTen();
  //print(car1.distanceDone);
  //distanceSoFar(carList);

  var employee = Employee.fromJson({});
  print(employee);
  print("");

  sets();
  print("");

  var p = Point(2, 3);
  print(p.distanceFromOrigin);
  p.distanceFromOrigin += 10;
  print(p.distanceFromOrigin);
  print("");

  for(var i = 0; i< carList.length; i++) {
    carList[i].distanceDone += 10;
    print("${carList[i].name} ${carList[i].id} distance : ${carList[i].distanceDone}");
  }
  print("");

}


void printInteger(int aNumber) {
  print('The number is $aNumber.');
}

void sets(){
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}

void startingCars(List<Car> carList){
  for(var i = 0; i< carList.length; i++) {
    carList[i].distanceDone += 20;
  }
}

void distanceSoFar(List<Car> carList){
  print("");
  for(var i = 0; i< carList.length; i++) {
    print("${carList[i].name} ${carList[i].id} distance : ${carList[i].distanceDone}");
  }
  print("");
}

void interpolation(){
  var s = 'string interpolation';

  assert('Dart has $s, which is very handy.' ==
      'Dart has string interpolation, '
          'which is very handy.');
  assert('That deserves all caps. '
          '${s.toUpperCase()} is very handy!' ==
      'That deserves all caps. '
          'STRING INTERPOLATION is very handy!');

  var s1 = 'String '
      'concatenation'
      " works even over line breaks.";
  assert(s1 ==
      'String concatenation works even over '
          'line breaks.');

  var s2 = 'The + operator ' + 'works, as well.';
  assert(s2 == 'The + operator works, as well.');
}

