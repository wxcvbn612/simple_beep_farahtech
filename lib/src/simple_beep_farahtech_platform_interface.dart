import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:simple_beep_farahtech/src/modal/beep_file.dart';

import 'simple_beep_farahtech_method_channel.dart';

abstract class SimpleBeepFarahtechPlatform extends PlatformInterface {
  /// Constructs a SimpleBeepFarahtechPlatform.
  SimpleBeepFarahtechPlatform() : super(token: _token);

  static final Object _token = Object();

  static SimpleBeepFarahtechPlatform _instance =
      MethodChannelSimpleBeepFarahtech();

  /// The default instance of [SimpleBeepFarahtechPlatform] to use.
  ///
  /// Defaults to [MethodChannelSimpleBeepFarahtech].
  static SimpleBeepFarahtechPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SimpleBeepFarahtechPlatform] when
  /// they register themselves.
  static set instance(SimpleBeepFarahtechPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> load(BeepFile file) {
    throw UnimplementedError('load () has not been implemented.');
  }

  Future<void> play(BeepFile file) {
    throw UnimplementedError('play () has not been implemented.');
  }

  Future<void> unload(BeepFile file) {
    throw UnimplementedError('unload () has not been implemented.');
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
