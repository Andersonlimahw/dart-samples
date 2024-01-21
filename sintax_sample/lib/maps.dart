// REF: https://dart.dev/language/collections#sets
import 'package:sintax_sample/enums.dart';

var mapSample = {
  EAction.code: 'Codar em modo hackathon',
  EAction.drinkCoffe: 'Pausa para um café!',
  EAction.sleep: 'Chega hora de dormir zzz'
};

String useMap(EAction action) {
  return mapSample[action] ?? 'Action not found!';
}

Map<EAction, String> updateMap(EAction key, String value) {
  mapSample[key] = value;
  return mapSample;
}

Map<EAction, String> removeItemOnMap(EAction key) {
  mapSample.remove(key);
  return mapSample;
}
