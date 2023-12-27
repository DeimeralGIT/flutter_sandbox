import 'package:flutter_sandbox/di/di.dart';

const instanceName = 'flavorVars';
const baseUrl = 'baseUrl';

extension FlavorValue on String {
  dynamic get getFlavorValue =>
      sl.call<Map<String, dynamic>>(instanceName: instanceName)[this];
}
