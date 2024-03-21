import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(BenimUygulamam());
}

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
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  State<YemekSayfasi> createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  @override
  void setStateMenu() {
    setState(() {
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
      corbaNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.yellow,
                  ),
                  // color: Colors.yellow,
                  // higlightColor: Colors.blue,
                  // splashColor: Colors.black,
                  onPressed: setStateMenu,
                  child: Image.asset('assets/corba_$corbaNo.jpg')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                onPressed: setStateMenu,
                child: Image.asset('assets/yemek_$yemekNo.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                onPressed: setStateMenu,
                child: Image.asset('assets/tatli_$tatliNo.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
