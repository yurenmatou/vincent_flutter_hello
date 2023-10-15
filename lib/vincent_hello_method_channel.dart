import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'vincent_hello_platform_interface.dart';

/// An implementation of [VincentHelloPlatform] that uses method channels.
class MethodChannelVincentHello extends VincentHelloPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  static const methodChannel = MethodChannel('vincent_hello');
//   final methodChannel = const MethodChannel('vincent_hello');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  static Future<String?> getBatteryLevel() async {
    final battery = await methodChannel.invokeMethod<String>('getBatteryLevel');
    return battery.toString();
  }
}
