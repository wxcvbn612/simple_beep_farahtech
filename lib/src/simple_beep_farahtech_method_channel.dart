import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:simple_beep_farahtech/src/modal/beep_file.dart';

import 'simple_beep_farahtech_platform_interface.dart';

/// An implementation of [SimpleBeepFarahtechPlatform] that uses method channels.
class MethodChannelSimpleBeepFarahtech extends SimpleBeepFarahtechPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('simple_beep_farahtech');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<void> load(BeepFile file) {
    return methodChannel.invokeListMethod<void>(
      "load",
      file.toFullPath,
    );
  }

  @override
  Future<void> play(BeepFile file) {
    return methodChannel.invokeListMethod<void>(
      "play",
      file.toFullPath,
    );
  }

  @override
  Future<void> unload(BeepFile file) {
    return methodChannel.invokeListMethod<void>(
      "unload",
      file.toFullPath,
    );
  }
}
