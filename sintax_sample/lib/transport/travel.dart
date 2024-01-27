import 'package:sintax_sample/transport/transport.dart';

class Travel {
  int _visetPlacesAmount = 0; // private modifier

  Map<String, dynamic> destinys = {};
  Set<String> visitedPlaces = {};
  ETransport transportType;

  Travel({
    required this.transportType,
  });

  void addDestiny({
    required String key,
    dynamic value,
  }) {
    destinys[key] = value;
  }

  void visitDestiny(String destiny) {
    visitedPlaces.add(destiny);
    _visetPlacesAmount += 1;
  }

  int get getVisitedPlacesAmount {
    return _visetPlacesAmount;
  }

  set updateVisitedPlacesAmountSize(int amount) {
    _visetPlacesAmount = amount;
  }

  @override
  String toString() {
    return 'Travel: _visetPlacesAmount: $_visetPlacesAmount, $destinys , $visitedPlaces';
  }
}

travelSample() {
  Travel travel = Travel(transportType: ETransport.airplane);
  travel.addDestiny(key: 'Tokyo');
  travel.addDestiny(key: 'China');
  travel.addDestiny(key: 'Canada');
  travel.addDestiny(key: 'EUA');
  travel.addDestiny(key: 'Argentina');

  travel.visitDestiny('Tokyo');
  travel.visitDestiny('EUA');

  print(travel.toString());
  // Setter sintax
  travel._visetPlacesAmount = 1;
  if (travel._visetPlacesAmount >= 10 ||
      travel._visetPlacesAmount > travel.destinys.length) {
    print(
        'Total de lugar visitado ${travel._visetPlacesAmount} é maior do que a quantidade de destinos ${travel.destinys.length}.');
  }
  print(travel.toString());
}
