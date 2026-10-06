
import 'whatsapp_stickers_plugin_platform_interface.dart';

class WhatsappStickersPlugin {
  Future<String?> getPlatformVersion() {
    return WhatsappStickersPluginPlatform.instance.getPlatformVersion();
  }
}
