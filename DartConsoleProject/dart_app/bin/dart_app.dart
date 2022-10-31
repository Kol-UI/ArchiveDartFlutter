import 'dart:io';
import 'package:dart_app/dart_app.dart' as dart_app;
import '../classes/car.dart';
import '../classes/employee.dart';
import '../classes/point.dart';
import '../classes/testclass.dart';
import 'package:dart_app/language_tour/operators.dart';
import 'package:dart_app/language_tour/loops.dart';
import 'package:dart_app/language_tour/decision_making.dart';
import 'package:dart_app/language_tour/numbers.dart';
import 'package:dart_app/language_tour/string_properties.dart';
import 'package:dart_app/language_tour/lists.dart';
import 'package:dart_app/main_algorithms.dart';
//import 'dart:math';

late String description;
late String descriptionTwo;

void main(List<String> arguments) {
  description = "Hello World";
  print('$description: ${dart_app.calculate()}!');
  var number = 42;
  printInteger(number);
  // int lineCount = 0;
  // assert(lineCount == null);

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
  for(var i = 0; i< len; i++) {
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

  TestClass c = TestClass();   
  c.disp(); 
  print("");

  sets();
  print("");

  var p = Point(2, 3);
  print(p.distanceFromOrigin);
  p.distanceFromOrigin += 10;
  print(p.distanceFromOrigin);
  print("");

  ifExample();
  print("");

  for(var i = 0; i< carList.length; i++) {
    carList[i].distanceDone += 10;
    print("${carList[i].name} ${carList[i].id} distance : ${carList[i].distanceDone}");
  }
  print("");

  menuSelection();

}

void menuSelection(){
  print("--- Dart Menu ---");
  print("1) Bool  2) Switch  3) Const  4) Operators  5) Loops  6) Decisions  7) Numbers  8) String Properties  9) Lists  10) Algorithms");
  int? menu = int.parse(stdin.readLineSync()!);
  switch(menu){
    case 1: {
      print("");
      print("--- Bool ---");
      bool aBool = true;
      bool anotherBool = false;
      checkIfTrue(aBool, anotherBool);
    }
    break;
    case 2: {
      switchGrade();
    }
    break;
    case 3: {
      constFunc();
    }
    break;
    case 4: {
      operators();
    }
    break;
    case 5: {
      loops();
    }
    break;
    case 6: {
      decision();
      switchGrade();
    }
    break;
    case 7: {
      numbersMain();
    }
    break;
    case 8: {
      stringPropertiesMain();
    }
    break;
    case 9: {
      listsMain();
    }
    break;
    case 10: {
      algoMain();
    }
    break;
    default: { 
      print("Invalid choice"); 
   }
   break; 
  }
}

void constFunc(){
  print("--- Const ---");
  const pi = 3.14; 
  const area = pi*12*12; 
  print("The output is $area"); 
}

void switchGrade(){
  print("");
  print("--- Switch ---");
  var gradeList = ["A", "B", "C", "D"];
  for(var i = 0; i< gradeList.length; i++){
    switch(gradeList[i]) { 
      case "A": { 
        print("${gradeList[i]} it's Excellent");
        } 
      break; 
      case "B": {  
        print("${gradeList[i]} it's Good"); 
        } 
      break; 
      case "C": {  
        print("${gradeList[i]} it's Fair"); 
        } 
      break; 
      case "D": {  
        print("${gradeList[i]} it's Poor"); 
        } 
      break; 
      default: { 
        print("Invalid choice"); 
        } 
      break; 
    } 
  }
}

void ifExample(){
  var num = 12; 
   if (num % 2==0) { 
      print("Even"); 
   } else { 
      print("Odd"); 
   } 
   print("");
}

void checkIfTrue(bool aBool, bool anotherBool){
  if (aBool){
    print("aBool is True.");
    if (anotherBool){
      print("And anotherBool is True too.");
    } else {
      print("But anotherBool is False.");
    }
  } else {
    print("aBool is False.");
    if (anotherBool){
      print("But at least anotherBool is True.");
    } else {
      print("anotherBool is also False.");
    }
  }
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

  // ignore: prefer_adjacent_string_concatenation
  var s2 = 'The + operator ' + 'works, as well.';
  assert(s2 == 'The + operator works, as well.');
}

