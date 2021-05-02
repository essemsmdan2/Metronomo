import 'package:flutter/material.dart';

class BarraAds extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ElevatedButton.icon(
          icon: Icon(
            Icons.accessibility,
            color: Colors.white,
          ),
          label: Text(
            'Baixe o Twitter',
            style: TextStyle(fontSize: 28, color: Colors.white),
          ),
        ));
  }
}
