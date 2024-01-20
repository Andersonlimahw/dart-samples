import 'package:object_orientation_sample/object_orientation_sample.dart'
    as object_orientation_sample;

import 'package:object_orientation_sample/functions_sample.dart'
    as functions_sample;

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
}
