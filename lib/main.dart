import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:wisata_app/detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata App',
      theme: ThemeData(),
      debugShowCheckedModeBanner: false,
      //Untuk Menghilangkan Tulisan Debugnya
      home: DetailScreen(),
    );
  }
}

class DetailScreen extends StatelessWidget {

  var fontOxygen = TextStyle(fontFamily: 'Oxygen');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title : Text('Wisata App')
      ),
      //SafeArea Fungsi Untuk Mengikuti Besaran Status Bar Karena HP Orang Bentuknya Berbeda-Beda
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.asset('images/disneyland.jpg', scale: 0.10,),
              Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Text(
                    'Tokyo Disneyland',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,fontFamily: 'Staatliches'),
                  )),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8),
                        Text('Openned',style: fontOxygen,),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.timer),
                        SizedBox(height: 8),
                        Text('Open Everyday',style: fontOxygen,),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Icon(Icons.monetization_on),
                        SizedBox(height: 8),
                        Text('Rp.1.040.000',style: fontOxygen,),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                child: Text(
                  'Tempat wisata ini merupakan Disneyland pertama yang dibangun di luar Amerika Serikat dan resmi dibuka pada tahun 1983. Tokyo Disneyland dibagi menjadi tujuh area utama yaitu World Bazaar, Tomorrowland, Toontown, Adventureland, Westernland, Critter Country, dan Fantasyland. Masing-masing mempunyai ciri khas sendiri',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              ),
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          'https://media2.tokyodisneyresort.jp/home/tdl/top/mainL_20210701_1.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          'https://media2.tokyodisneyresort.jp/home/tdl/top/main_20211001_02.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          'https://media2.tokyodisneyresort.jp/home/tdl/top/main_20211001_03.jpg'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
