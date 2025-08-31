import 'package:devfestfl/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class FaqPage extends StatelessWidget {
  static const String routeName = "/faq";

  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..loadRequest(Uri.parse("https://devfestflorida.org/faq"));

    return DevScaffold(
      title: "FAQ",
      body: WebViewWidget(controller: controller),
    );
  }
}
