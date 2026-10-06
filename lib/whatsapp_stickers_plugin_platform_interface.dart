import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'whatsapp_stickers_plugin_method_channel.dart';

abstract class WhatsappStickersPluginPlatform extends PlatformInterface {
  /// Constructs a WhatsappStickersPluginPlatform.
  WhatsappStickersPluginPlatform() : super(token: _token);

  static final Object _token = Object();

  static WhatsappStickersPluginPlatform _instance = MethodChannelWhatsappStickersPlugin();

  /// The default instance of [WhatsappStickersPluginPlatform] to use.
  ///
  /// Defaults to [MethodChannelWhatsappStickersPlugin].
  static WhatsappStickersPluginPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [WhatsappStickersPluginPlatform] when
  /// they register themselves.
  static set instance(WhatsappStickersPluginPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
