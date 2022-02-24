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
    return const SafeArea(
        child: WebView(
      initialUrl: 'https://rocky08808.github.io/count/',
    ));
  }
}
