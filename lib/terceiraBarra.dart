
import 'package:flutter/material.dart';

class TerceiraBarra extends StatefulWidget {
  @override
  _TerceiraBarraState createState() => _TerceiraBarraState();
}

class _TerceiraBarraState extends State<TerceiraBarra> {

  var iconRelogio = Icons.timer;
  var iconStar = Icons.star_border;
  var iconCorStar = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        TextButton(
            onPressed: (){
              setState(() {
                iconStar= iconStar== Icons.star_border?Icons.star: Icons.star_border;
              });
            },
            child: Icon(iconStar, size: 33, color:  iconStar== Icons.star_border?Colors.grey: Colors.orange)),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.orange,
                shape:RoundedRectangleBorder(borderRadius:BorderRadius.circular(7)) ,
                minimumSize: Size(130, 50)),

            onPressed: () => {},
            child: Text(
              'Iniciar',
              style: TextStyle(fontSize: 22),
            )),
        TextButton(
          onPressed: (){
            setState(() {
              iconRelogio= iconRelogio== Icons.timer?Icons.timer_off: Icons.timer;
            });
          },
          child: Icon(iconRelogio,

            size: 33,
            color: iconRelogio== Icons.timer?Colors.grey: Colors.orange
          ),
        ),
      ],
    );
  }
}
