import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceId {
  static final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();
  static getDeviceID() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo android = await _deviceInfo.androidInfo;
      return "${android.board}/${android.id}";
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await _deviceInfo.iosInfo;
      return iosInfo.identifierForVendor;
    } else {
      return "";
    }
  }
}
