import 'package:sintax_sample/enums.dart';

String handleScreenPath(EScreens screen) {
  final String path;
  const String appName = 'myapp';

  switch (screen) {
    case EScreens.cart:
      path = 'cart';
      break;
    case EScreens.landingPage:
      path = 'lading-page';
      break;
    case EScreens.wallet:
      path = 'customer-wallet';
      break;
    case EScreens.home:
    default:
      path = 'home';
      break;
  }
  return '$appName://$path';
}
