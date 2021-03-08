import 'package:capyba/blocs/authBloc.dart';
import 'package:capyba/paginas/MainScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) => AuthBloc(),
      child: MaterialApp(
        title: 'desafio capyba',
        debugShowCheckedModeBanner: false,
        home: FutureBuilder(
          future: fbApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              print('Error! ${snapshot.error.toString()}');
              return Text('Algo deu Errado!');
            } else if (snapshot.hasData) {
              return MainScreen();
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFF00E676)),
      ),
    );
  }
}
