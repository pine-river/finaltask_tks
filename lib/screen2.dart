import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Screen2 extends StatelessWidget {
  final List<int> whichHistory;

  Screen2(this.whichHistory);

  void _copyToClipboard() {
    String historyText = whichHistory.toString();
    Clipboard.setData(ClipboardData(text: historyText));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Which History"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _copyToClipboard,
          child: Text("結果をコピーする"),
        ),
      ),
    );
  }
}
