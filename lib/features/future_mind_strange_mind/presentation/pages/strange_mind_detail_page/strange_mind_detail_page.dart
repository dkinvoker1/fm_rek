import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class StrangeMindDetailPage extends StatefulWidget {
  const StrangeMindDetailPage({Key? key, required this.detailsUrl})
      : super(key: key);

  final String detailsUrl;

  @override
  State<StrangeMindDetailPage> createState() => _StrangeMindDetailPageState();
}

class _StrangeMindDetailPageState extends State<StrangeMindDetailPage> {
  late final WebViewController controller;

  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..loadRequest(Uri.parse(widget.detailsUrl));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Flutter Simple Example')),
      body: WebViewWidget(controller: controller),
    );
  }
}
