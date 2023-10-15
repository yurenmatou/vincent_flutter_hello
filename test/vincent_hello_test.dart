import 'package:flutter_test/flutter_test.dart';
import 'package:vincent_hello/vincent_hello.dart';
import 'package:vincent_hello/vincent_hello_platform_interface.dart';
import 'package:vincent_hello/vincent_hello_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockVincentHelloPlatform
    with MockPlatformInterfaceMixin
    implements VincentHelloPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final VincentHelloPlatform initialPlatform = VincentHelloPlatform.instance;

  test('$MethodChannelVincentHello is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelVincentHello>());
  });

  test('getPlatformVersion', () async {
    VincentHello vincentHelloPlugin = VincentHello();
    MockVincentHelloPlatform fakePlatform = MockVincentHelloPlatform();
    VincentHelloPlatform.instance = fakePlatform;

    expect(await vincentHelloPlugin.getPlatformVersion(), '42');
  });
}
