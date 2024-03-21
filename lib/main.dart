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
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatelessWidget {
  int corbaNo = 1;

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
                  onPressed: () {
                    print('corbaaaaaaaaaaaaa');
                    corbaNo = 4;
                    print(corbaNo);
                  },
                  child: Image.asset('assets/corba_$corbaNo.jpg')),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                onPressed: () {
                  print('yemekkkkkkkkkkkkk');
                },
                child: Image.asset('assets/yemek_1.jpg'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(backgroundColor: Colors.yellow),
                onPressed: () {
                  print('tatlıııııııııı');
                },
                child: Image.asset('assets/tatli_1.jpg'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
