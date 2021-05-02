import 'package:flutter/material.dart';


class Roleta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        child: Row(children: [
          TextoLinha(
            showText: true,
          ),
          Flexible(child: RoletaWheel()),
          TextoLinha()
        ]));
  }
}

//Roleta com os Valores BPM
class RoletaWheel extends StatelessWidget {
  var bpm = [for (var i = 40; i < 221; i += 1) i];

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect rect) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.purple,
            Colors.transparent,
            Colors.transparent,
            Colors.purple
          ],
          stops: [
            0.0,
            0.5,
            0.1,
            1.0
          ], // 10% purple, 80% transparent, 10% purple
        ).createShader(rect);
      },
      blendMode: BlendMode.dstOut,
      child: ListWheelScrollView(
          itemExtent: 110,


          clipBehavior: Clip.antiAliasWithSaveLayer,
          physics: FixedExtentScrollPhysics(),
          children: bpm
              .map((index) => Center(
                      child: Text(
                    '$index',
                    style: TextStyle(fontSize: 80)
                  )))
              .toList()),
    );
  }
}

//Texto e Linha com parametro ShowText
//showText: se o parametro for qualquer valor diferente de null = mostra Texto BPM
class TextoLinha extends StatelessWidget {
  TextoLinha({this.showText});

  bool showText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: showText != null ? 1 : 0,
          child: Text(
            'BPM',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.start,
          ),
        ),
        Text(
          '_____________',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.orange, fontSize: 18),
        ),
        Opacity(
          opacity: 0,
          child: Text(
            'BPM',
            style: TextStyle(fontSize: 18),
            textAlign: TextAlign.start,
          ),
        )
      ],
    );
  }
}
