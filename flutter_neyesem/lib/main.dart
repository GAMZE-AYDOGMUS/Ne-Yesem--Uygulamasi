import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 214, 116, 176),
          centerTitle: true,
          title: Text('BUGÜN NE YESEM?'),
        ),
        body: YemekSayfasi(),
      ),
    );
  }
}

class YemekSayfasi extends StatefulWidget {
  @override
  _YemekSayfasiState createState() => _YemekSayfasiState();
}

class _YemekSayfasiState extends State<YemekSayfasi> {
  int corbaNo = 1;
  int yemekNo = 1;
  int tatliNo = 1;

  void yemekleriYenile() {
    setState(() {
      corbaNo = Random().nextInt(5) + 1;
      yemekNo = Random().nextInt(5) + 1;
      tatliNo = Random().nextInt(5) + 1;
    });
  }

  List<String> corbaAdlari = [
    'Mercimek Çorbası',
    'Tarhana Çorbası',
    'Tavuksuyu',
    'Düğün Çorbası',
    'Yoğurtlu Çorba'
  ];

  List<String> yemekAdlari = [
    'Karnıyarık',
    'Mantı',
    'Kuru Fasulye',
    'İçli Köfte',
    'Izgara Balık'
  ];

  List<String> tatliAdlari = [
    'Kadayıf',
    'Baklava',
    'Sütlaç',
    'Kazandibi',
    'Dondurma'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/corba_$corbaNo.jpg')),
            ),
          ),
          Text(
            corbaAdlari[corbaNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/yemek_$yemekNo.jpg')),
            ),
          ),
          Text(
            yemekAdlari[yemekNo - 1],
            style: TextStyle(fontSize: 20),
          ),
          Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: ElevatedButton(
                  onPressed: yemekleriYenile,
                  child: Image.asset('assets/tatli_$tatliNo.jpg')),
            ),
          ),
          Text(
            tatliAdlari[tatliNo - 1],
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    );
  }
}
