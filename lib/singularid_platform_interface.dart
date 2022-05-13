import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'singularid_method_channel.dart';

abstract class SingularidPlatform extends PlatformInterface {
  /// Constructs a SingularidPlatform.
  SingularidPlatform() : super(token: _token);

  static final Object _token = Object();

  static SingularidPlatform _instance = MethodChannelSingularid();

  /// The default instance of [SingularidPlatform] to use.
  ///
  /// Defaults to [MethodChannelSingularid].
  static SingularidPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SingularidPlatform] when
  /// they register themselves.
  static set instance(SingularidPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> getAndroidId() {
    throw UnimplementedError('androidId() has not been implemented.');
  }
}
