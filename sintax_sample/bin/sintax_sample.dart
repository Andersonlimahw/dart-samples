import 'package:sintax_sample/collections.dart';
import 'package:sintax_sample/dynamic_conceitual.dart';
import 'package:sintax_sample/enums.dart';
import 'package:sintax_sample/maps.dart';

import 'package:sintax_sample/statics.dart';
import 'package:sintax_sample/switchs.dart';
import 'package:sintax_sample/transport/travel.dart';

void main(List<String> arguments) {
  print('Enums : ${handleScreenPath(EScreens.wallet)}');
  print('Enums : ${handleScreenPath(EScreens.home)}');
  print('Collections : ${collectionSample()}');
  print('Map : ${useMap(EAction.code)}');
  print('Map : ${useMap(EAction.drinkCoffe)}');
  print('Map : ${useMap(EAction.sleep)}');

  print('Map updateMap: ${updateMap(EAction.code, "Cofffffffeeeeeeee!")}');
  print('Map : removeItemOnMap ${removeItemOnMap(EAction.sleep)}');

  print('typesSample ${typesSample()}');

  print('staticSample ${staticSample()}');
  print('Encapsulation sample');
  travelSample();
}
