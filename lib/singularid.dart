import 'singularid_platform_interface.dart';

class Singularid {
  Future<String?> getPlatformVersion() {
    return SingularidPlatform.instance.getPlatformVersion();
  }

  Future<String?> getAndroidId() {
    return SingularidPlatform.instance.getAndroidId();
  }
}
