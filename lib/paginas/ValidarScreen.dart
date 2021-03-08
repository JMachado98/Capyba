import 'package:flutter/material.dart';

class ValidarScreen extends StatefulWidget {
  @override
  ValidarState createState() => ValidarState();
}

class ValidarState extends State<ValidarScreen>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xFF69F0AE),
                  Color(0xFF00E676),
                  Color(0xFF00E676),
                  Color(0xFF00c853)
                ],
                stops: [0.1, 0.4, 0.7, 0.9],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

