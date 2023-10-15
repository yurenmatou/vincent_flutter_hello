
import 'vincent_hello_platform_interface.dart';

class VincentHello {
  Future<String?> getPlatformVersion() {
    return VincentHelloPlatform.instance.getPlatformVersion();
  }
}
