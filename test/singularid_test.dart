import 'package:flutter_test/flutter_test.dart';
import 'package:singularid/singularid.dart';
import 'package:singularid/singularid_platform_interface.dart';
import 'package:singularid/singularid_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockSingularidPlatform
    with MockPlatformInterfaceMixin
    implements SingularidPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getAndroidId() {
    // TODO: implement getAndroidId
    throw UnimplementedError();
  }
}

void main() {
  final SingularidPlatform initialPlatform = SingularidPlatform.instance;

  test('$MethodChannelSingularid is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSingularid>());
  });

  test('getPlatformVersion', () async {
    Singularid singularidPlugin = Singularid();
    MockSingularidPlatform fakePlatform = MockSingularidPlatform();
    SingularidPlatform.instance = fakePlatform;

    expect(await singularidPlugin.getPlatformVersion(), '42');
  });
}
