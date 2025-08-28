import 'package:devfestfl/universal/dev_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class FaqPage extends StatelessWidget {
  static const String routeName = "/faq";

  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const DevScaffold(
      body: WebviewScaffold(
        url: "https://devfestflorida.org/faq",
        hidden: true,
      ),
      title: "FAQ",
    );
  }
}
