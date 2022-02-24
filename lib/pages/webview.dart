import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatefulWidget {
  final String url;
  const WebViewPage({Key? key, required this.url}) : super(key: key);

  @override
  _WebViewPage createState() => _WebViewPage();
}

class _WebViewPage extends State<WebViewPage> {
  bool loading = true;
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'web',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            WebView(
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: widget.url,
                onPageStarted: (controller) {},
                onPageFinished: (controller) {
                  setState(() {
                    loading = false;
                  });
                }),
            ..._createLoading()
          ],
        ));
  }

  _createLoading() {
    return loading
        ? [
            const Center(
              child: CircularProgressIndicator(),
            )
          ]
        : [];
  }
}
