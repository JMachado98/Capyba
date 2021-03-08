import 'dart:async';

import 'package:capyba/paginas/Restricted.dart';
import 'package:flutter/material.dart';

import 'package:firebase_auth/firebase_auth.dart';

class ValidarScreen extends StatefulWidget {
  @override
  ValidarState createState() => ValidarState();
}

class ValidarState extends State<ValidarScreen> {
  final auth = FirebaseAuth.instance;
  User user;
  Timer timer;

  @override
  void initState() {
    user = auth.currentUser;
    user.sendEmailVerification();

    timer = Timer.periodic(Duration(seconds: 3), (timer) {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            child: Text(
              'Um Email foi enviado para ${user.email}, por favor verificar'
            ),
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

  Future<void> checarEmail() async {
    user = auth.currentUser;
    await user.getIdTokenResult();
    if (user.emailVerified) {
      timer.cancel();
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => RestrictedScreen()));
    }
  }
}
