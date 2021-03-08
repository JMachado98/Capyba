import 'package:capyba/paginas/MainScreen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'desafio capyba',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
      theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF00E676)),
    );
  }
}
