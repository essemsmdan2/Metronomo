import 'package:flutter/cupertino.dart';

import './roletaBarra.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import './primeiraBarra.dart';
import './terceiraBarra.dart';
import './barraAds.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Metronomo',

      theme:
          ThemeData(textTheme:TextTheme(
            bodyText2:TextStyle(fontFamily:'atual', fontWeight:FontWeight.w400)
          ),brightness: Brightness.dark),



      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar com Icon e Text
      appBar: AppBar(
        backgroundColor: Colors.black12,
        elevation: 0.0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Text('_________',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[700])),
            ),
            Icon(
              Icons.audiotrack_rounded,
              color: Colors.orange,
              size: 25.0,
            ),
            Container(
              margin: EdgeInsets.only(bottom: 15),
              child: Text('_________',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.grey[700])),
            )
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => {},
            child: Center(
                child: Text(
              'Editar',
              style: TextStyle(
                  fontFamily: 'Varela', fontSize: 17.0, color: Colors.orange),
            )),
          )
        ],
      ),
      body: SafeArea(
        top: true,

        left: true,
        right: true,
        maintainBottomViewPadding: true,
        minimum: EdgeInsets.all(16.0),

        //Onde inicia a tela

        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [PrimeiraBarra(), Roleta(), TerceiraBarra(), BarraAds()]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.graphic_eq), label: 'Metrônomo'),
            BottomNavigationBarItem(
                icon: Icon(Icons.touch_app), label: 'Tap Tempo'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favoritos'),
            BottomNavigationBarItem(
                icon: Icon(Icons.construction), label: 'Opções'),
            BottomNavigationBarItem(icon: Icon(Icons.more), label: 'Mais Apps'),
          ]),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
