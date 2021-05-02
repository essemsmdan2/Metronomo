import 'package:flutter/material.dart';


class PrimeiraBarra extends StatefulWidget {
  @override
  _PrimeiraBarraState createState() => _PrimeiraBarraState();
}

class _PrimeiraBarraState extends State<PrimeiraBarra> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Bolinha(
            title: 1,
          ),
          Bolinha(

            title: 2,
          ),
          Bolinha(
            title: 3,
          ),
          Bolinha(
            title: 4,
          ),
        ],
      ),
    );
  }
}


class Bolinha extends StatefulWidget {
  Bolinha({
    this.title,


  });

  var title;


  @override
  _BolinhaState createState() => _BolinhaState();
}

class _BolinhaState extends State<Bolinha> {

  var corBola = Colors.grey.withOpacity(0.2);
  mudaCorState(){
    setState(() {

      corBola = corBola == Colors.grey.withOpacity(0.2) ? Colors.orange.withOpacity(0.3):Colors.grey.withOpacity(0.2);
    });
  }
 // ? Colors.grey.withOpacity(0.2): Colors.orange.withOpacity(0.3),;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: mudaCorState,
      child: new Container(
        child: Text(
          '${widget.title}',
          style: TextStyle(fontSize: 40, color: Colors.white.withOpacity(0.7)),
        ),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: corBola,

        ),
        padding: EdgeInsets.all(15),
        margin: EdgeInsets.all(3),
      ),
    );
  }
}
