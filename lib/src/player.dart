import 'package:simple_beep_farahtech/src/modal/beep_file.dart';
import 'package:simple_beep_farahtech/src/simple_beep_farahtech_platform_interface.dart';

class SimpleBeepPlayer {
  static Future<void> load(BeepFile file) {
    return SimpleBeepFarahtechPlatform.instance.load(file);
  }

  static Future<void> play(BeepFile file) {
    return SimpleBeepFarahtechPlatform.instance.play(file);
  }

  static Future<void> unload(BeepFile file) {
    return SimpleBeepFarahtechPlatform.instance.unload(file);
  }

  getPlatformVersion() {}
}
