import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EmulatorPage extends StatefulWidget {

  final String romPath;

  const EmulatorPage({super.key, required this.romPath});

  @override
  State<EmulatorPage> createState() => _EmulatorPageState();
}

class _EmulatorPageState extends State<EmulatorPage> {

  late WebViewController controller;

  @override
  void initState() {

    super.initState();

    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadHtmlString("""
      <html>
      <body style="background:black">

      <canvas id="screen" width="256" height="240"></canvas>

      <script src="jsnes.js"></script>

      <script>

      const canvas = document.getElementById("screen");

      var nes = new JSNES({
        canvas: canvas
      });

      function start(){
        console.log("Emulator Started");
      }

      start();

      </script>

      </body>
      </html>
      """);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: const Text("Emulator")),

      body: WebViewWidget(controller: controller),
    );

  }
}
