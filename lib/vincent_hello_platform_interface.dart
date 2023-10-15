import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'vincent_hello_method_channel.dart';

abstract class VincentHelloPlatform extends PlatformInterface {
  /// Constructs a VincentHelloPlatform.
  VincentHelloPlatform() : super(token: _token);

  static final Object _token = Object();

  static VincentHelloPlatform _instance = MethodChannelVincentHello();

  /// The default instance of [VincentHelloPlatform] to use.
  ///
  /// Defaults to [MethodChannelVincentHello].
  static VincentHelloPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [VincentHelloPlatform] when
  /// they register themselves.
  static set instance(VincentHelloPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
