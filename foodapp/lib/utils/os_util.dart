import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class OSUtils {
  static Future<bool> checkOldAndroidVersion() async {
    if (Platform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      final sdkInt = androidInfo.version.sdkInt;
      if (sdkInt >= 33) {
        return false;
      }
    }
    return true;
  }
}