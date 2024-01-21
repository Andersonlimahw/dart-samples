String typesSample() {
  var implicit = 0; // will be int
  int intSample = 10;
  final String finalString;
  const String constString = "Sample";
  dynamic dynamicSample = 0; // can change type, but generate execution error.
  dynamicSample = "Sample";
  double doubleSample = 5.00;
  finalString = "finalString sample";
  List<String> listSample = [];
  listSample.add(constString);
  listSample.add(finalString);
  listSample.add(dynamicSample);

  String result =
      ('${listSample.map((e) => e)}, implicit with var: $implicit, intSample: $intSample, doubleSample: $doubleSample');
  print(result);

  return result;
}
