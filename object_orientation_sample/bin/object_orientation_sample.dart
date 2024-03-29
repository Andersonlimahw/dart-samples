import 'package:object_orientation_sample/object_orientation_sample.dart'
    as object_orientation_sample;

import 'package:object_orientation_sample/functions_sample.dart'
    as functions_sample;

import 'package:object_orientation_sample/scope_sample.dart' as scope_sample;

import 'package:object_orientation_sample/recursive_sample.dart'
    as recursive_sample;

import 'package:object_orientation_sample/class_sample.dart' as class_sample;

import 'package:object_orientation_sample/heranca_sample.dart'
    as heranca_sample;

import 'package:object_orientation_sample/abstract_class_sample.dart'
    as abstract_class_sample;

void main(List<String> arguments) {
  print('Hello world: ${functions_sample.sample("Hello")}!');
  print('Functions: sampleNamed ${functions_sample.sampleNamed(
    name: "Anderson",
    salary: 5000000,
  )}!');
  print('Functions: sampleNamedOptional${functions_sample.sampleNamedOptional(
    name: "Anderson",
    salary: 5000000,
  )}!');
  print('Functions: sampleNamedOptional ${functions_sample.sampleNamedOptional(
    name: "Anderson",
    salary: 5000000,
    city: "Tokyo",
  )}!');
  print('Calculate: ${object_orientation_sample.calculate()}!');

  print('Scope: global, salary ${scope_sample.salaryByAge(30)}!');

  print(
      'Scope: local, salary ${scope_sample.scope(name: "Anderson", age: 40)}!');

  print('Recursive:  ${recursive_sample.sample()}!');

  print(
      'Class sample:  ${class_sample.buildDevelopers(amountOfDevelopers: 2)}!');

  print(
      'Class Heranca sample:  ${heranca_sample.buildDevelopersWithVariations(amountOfDevelopers: 2)}!');
  print(
      'Abstract class sample:  ${abstract_class_sample.buildProducts(amount: 5)}!');
}
