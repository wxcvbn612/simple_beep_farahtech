import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:simple_beep_farahtech/simple_beep_farahtech.dart';
import 'package:simple_beep_farahtech/src/modal/beep_file.dart';
import 'package:simple_beep_farahtech/src/simple_beep_farahtech_method_channel.dart';
import 'package:simple_beep_farahtech/src/simple_beep_farahtech_platform_interface.dart';

class MockSimpleBeepFarahtechPlatform
    with MockPlatformInterfaceMixin
    implements SimpleBeepFarahtechPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<void> load(BeepFile file) {
    // TODO: implement load
    throw UnimplementedError();
  }

  @override
  Future<void> play(BeepFile file) {
    // TODO: implement play
    throw UnimplementedError();
  }

  @override
  Future<void> unload(BeepFile file) {
    // TODO: implement unload
    throw UnimplementedError();
  }
}

void main() {
  final SimpleBeepFarahtechPlatform initialPlatform =
      SimpleBeepFarahtechPlatform.instance;

  test('$MethodChannelSimpleBeepFarahtech is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSimpleBeepFarahtech>());
  });
}
