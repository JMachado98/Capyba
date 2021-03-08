import 'package:capyba/paginas/TelaCadastro.dart';
import 'package:capyba/paginas/TelaLogin.dart';

import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  @override
  MainState createState() => MainState();
}

class MainState extends State<MainScreen> {
  bool isLoged = false;

  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.transparent,
    padding: EdgeInsets.all(15),
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(30),
    ),
  );

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    primary: Colors.greenAccent[700],
    padding: EdgeInsets.all(15),
    shape: RoundedRectangleBorder(
      side: BorderSide(color: Colors.white),
      borderRadius: BorderRadius.circular(30),
    ),
  );

  Widget blocoImage() {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(
                  'https://i.postimg.cc/KzbHXgKW/capyba-simbolo-colorido-1.png'))),
    );
  }

  Widget blocoButtonLogin() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: TextButton(
        style: flatButtonStyle,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaLogin()),
          );
        },
        child: Text(
          'Já sou Cadastrado',
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  Widget blocoButtonCadastro() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        style: raisedButtonStyle,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaCadastro()),
          );
        },
        child: Text(
          'Quero me cadastrar',
          style: TextStyle(
              color: Colors.white,
              letterSpacing: 1.5,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

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
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: AlwaysScrollableScrollPhysics(),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 120),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Capyba',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                  blocoImage(),
                  Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                  Text(
                    'Seja bem-vindo!',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'OpenSans',
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 40)),
                  blocoButtonCadastro(),
                  blocoButtonLogin(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
