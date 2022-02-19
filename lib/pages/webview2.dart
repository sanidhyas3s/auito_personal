import'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class WebViewApp2 extends StatefulWidget {
  const WebViewApp2({Key? key}) : super(key: key);

  @override
  State<WebViewApp2> createState() => _WebViewAppState();
}

class _WebViewAppState extends State<WebViewApp2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('You can watch this movie!'),
      ),
      body: const WebView(
        initialUrl: 'https://www.imdb.com/title/tt10872600/',
      ),
    );
  }
}