import 'package:flutter/material.dart';
import './webview.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  final url = 'https://rocky08808.github.io/count-vue/';
  @override
  Widget build(BuildContext context) {
    return WebViewPage(url: url);
  }
}
