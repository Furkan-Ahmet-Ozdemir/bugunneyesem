import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

// 12.39 da kaldım 24. videos
class BenimUygulamam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'BUGUN NE YESEM ?',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: Center(),
      ),
    );
  }
}
