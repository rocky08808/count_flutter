import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({Key? key}) : super(key: key);

  @override
  _WebViewPage createState() => _WebViewPage();
}

class _WebViewPage extends State<WebViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'count',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: const WebView(
        initialUrl: 'https://github.com/',
      ),
    );
  }
}
