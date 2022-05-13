import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'singularid_platform_interface.dart';

/// An implementation of [SingularidPlatform] that uses method channels.
class MethodChannelSingularid extends SingularidPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('singularid');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getAndroidId() async {
    final androidId = await methodChannel.invokeMethod<String>('getAndroidId');
    return androidId;
  }
}
