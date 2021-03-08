import 'package:capyba/paginas/Restricted.dart';
import 'package:capyba/paginas/ValidarScreen.dart';
import 'package:flutter/material.dart';

class StyleDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Colors.greenAccent,
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 100,
                    height: 100,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: NetworkImage(
                              'https://www.thesprucepets.com/thmb/COdGzNriu8oQVi8igXmSzFzXTRk=/2109x2109/smart/filters:no_upscale()/puppy-samoyed-boy-990077480-5c89719646e0fb00012c67e8.jpg')),
                    ),
                  ),
                  Text(
                    'user email',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Perfil',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () => ('Perfil'),
          ),
          ListTile(
            leading: Icon(Icons.lock),
            title: Text(
              'Restrito',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => RestrictedScreen()
                )
              );
            },
          ),
           ListTile(
            leading: Icon(Icons.mail),
            title: Text(
              'Validar Email',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context) => ValidarScreen()
                )
              );
            },
          ),
        ],
      ),
    );
  }
}
