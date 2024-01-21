// Getters and Setters
// https://dart.dev/language/collections
collectionSample() {
  print('destiny: ${registerDestiny("São Paulo")}');
  print('destiny: ${registerDestiny("São Paulo")}');
  print('destiny: ${registerDestiny("Tokyo")}');
  print('destiny: ${registerDestiny("EUA")}');
}

// Unique values are accepted
Set<String> registerDestiny(String destiny) {
  Set<String> visitedLocations = <String>{};
  visitedLocations.add(destiny);
  print('Visited locations $visitedLocations');

  print('Visited locations first ${visitedLocations.first}');
  print('Visited locations last ${visitedLocations.last}');
  print('Visited locations : IsEmpty ${visitedLocations.isEmpty}');
  print('Visited locations : Map ${visitedLocations.map((e) => e)}');
  return visitedLocations;
}
