import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'whatsapp_stickers_plugin_platform_interface.dart';

/// An implementation of [WhatsappStickersPluginPlatform] that uses method channels.
class MethodChannelWhatsappStickersPlugin extends WhatsappStickersPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('whatsapp_stickers_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }
}
