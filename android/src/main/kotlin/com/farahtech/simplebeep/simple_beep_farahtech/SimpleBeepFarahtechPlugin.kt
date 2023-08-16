package com.farahtech.simplebeep.simple_beep_farahtech

import android.content.Context
import android.content.res.AssetManager
import androidx.annotation.NonNull

import com.farahtech.simplebeep.simple_beep_farahtech.SimpleBeepPlayer

import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result

/** SimpleBeepFarahtechPlugin */
class SimpleBeepFarahtechPlugin: FlutterPlugin, MethodCallHandler {
  private lateinit var _channel : MethodChannel

  private lateinit var _simpleBeepPlayer: SimpleBeepPlayer

  override fun onAttachedToEngine(@NonNull flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {

    _simpleBeepPlayer = SimpleBeepPlayer(
      flutterPluginBinding.applicationContext.assets,
      flutterPluginBinding.flutterAssets
    )

    _channel = MethodChannel(flutterPluginBinding.binaryMessenger, "simple_beep_farahtech")
    _channel.setMethodCallHandler(this)
  }

  override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
    val filePath: String? = call.arguments<String>()

    if (filePath == null) {
      result.error(
        "INVALID_ARGUMENT",
        "filePath is null",
        null,
      )
      return
    }
    when (call.method) {
      "load" -> {
        _simpleBeepPlayer.load(filePath)
        result.success(true)
      }
      "play" -> {
        _simpleBeepPlayer.play(filePath)
        result.success(true)
      }
      "unload" -> {
        _simpleBeepPlayer.unload(filePath)
        result.success(true)
      }
      else -> result.notImplemented()
    }
  }

  override fun onDetachedFromEngine(@NonNull binding: FlutterPlugin.FlutterPluginBinding) {
    _channel.setMethodCallHandler(null)
    _simpleBeepPlayer.dispose();
  }
}
