// Params

String sample(String name) {
  print(name);
  return name;
}

// Named params : Required

String sampleNamed({
  required String name,
  required int salary,
}) {
  print(name);
  return name;
}

// Optional params
// Optional params with default value
String sampleNamedOptional({
  required String name,
  required int salary,
  String city = "SP",
}) {
  print(name);
  return name;
}
