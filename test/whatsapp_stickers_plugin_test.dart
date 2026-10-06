import 'package:flutter_test/flutter_test.dart';
import 'package:whatsapp_stickers_plugin/whatsapp_stickers_plugin.dart';
import 'package:whatsapp_stickers_plugin/whatsapp_stickers_plugin_platform_interface.dart';
import 'package:whatsapp_stickers_plugin/whatsapp_stickers_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockWhatsappStickersPluginPlatform
    with MockPlatformInterfaceMixin
    implements WhatsappStickersPluginPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final WhatsappStickersPluginPlatform initialPlatform = WhatsappStickersPluginPlatform.instance;

  test('$MethodChannelWhatsappStickersPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelWhatsappStickersPlugin>());
  });

  test('getPlatformVersion', () async {
    WhatsappStickersPlugin whatsappStickersPlugin = WhatsappStickersPlugin();
    MockWhatsappStickersPluginPlatform fakePlatform = MockWhatsappStickersPluginPlatform();
    WhatsappStickersPluginPlatform.instance = fakePlatform;

    expect(await whatsappStickersPlugin.getPlatformVersion(), '42');
  });
}
