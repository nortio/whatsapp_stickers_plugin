import 'package:flutter/material.dart';
import 'package:whatsapp_stickers_plugin/whatsapp_stickers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isInstalled = false;
  final _pack = WhatsappStickers(
    identifier: "hello",
    name: "name",
    publisher: "author",
    trayImageFileName: WhatsappStickerImage.fromAsset("asset"),
  );
  @override
  void initState() {
    super.initState();
  }

  Future<void> initIsInstalled() async {
    setState(() async {
      _isInstalled = await _pack.isInstalled();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin example app')),
        body: Center(child: Text('Is installed: $_isInstalled')),
      ),
    );
  }
}
