import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NetworkImageWithRefreshWidget extends StatefulWidget {
  const NetworkImageWithRefreshWidget({super.key, required this.url});

  final String url;

  @override
  State<NetworkImageWithRefreshWidget> createState() =>
      _NetworkImageWithRefreshWidgetState();
}

class _NetworkImageWithRefreshWidgetState extends State<NetworkImageWithRefreshWidget> {
  late Widget _pic;

  @override
  void initState() {
    _updateImgWidget();
    super.initState();
  }

  _updateImgWidget() async {
    setState(() {
      _pic = const CircularProgressIndicator();
    });

    try {
      var byteData = await NetworkAssetBundle(Uri.parse(widget.url))
          .load(widget.url)
          .timeout(const Duration(seconds: 10));
      Uint8List bytes = byteData.buffer.asUint8List();

      setState(() {
        _pic = Image.memory(bytes);
      });
    } on Exception {
      setState(() {
        _pic = TextButton(
            onPressed: () {
              _updateImgWidget();
            },
            child: const Text('refresh'));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return _pic;
  }
}
