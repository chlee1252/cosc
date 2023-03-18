import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginWebview extends StatefulWidget {
  final String url;

  const LoginWebview({Key? key, required this.url}) : super(key: key);

  @override
  State<LoginWebview> createState() => _LoginWebviewState();
}

class _LoginWebviewState extends State<LoginWebview> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();

    _controller = WebViewController()
      ..setUserAgent("Safari/537.36")
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse(widget.url))
      ..setNavigationDelegate(NavigationDelegate(
        onPageFinished: (String? url) {
          print("Finished: $url");
        },
        onPageStarted: (String? url) {
          print("Start: $url");
        },
        onWebResourceError: (WebResourceError error) {
          debugPrint('''
Page resource error:
  code: ${error.errorCode}
  description: ${error.description}
  errorType: ${error.errorType}
  isForMainFrame: ${error.isForMainFrame}
          ''');
        },
      ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: WebViewWidget(controller: _controller));
  }
}
