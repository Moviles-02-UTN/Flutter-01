import 'package:flutter/material.dart';
import 'styles/style_01.dart';
import 'pages/menus_home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class_01 con Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Class_01 con Flutter', style: Style01.appBarTitle),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 25, 25, 1),
        ),
        body: Center(
          child: Column(
            children: [
              Image(image: AssetImage('assets/imgs/pacifico-UTN.png')),
              Text(
                'Hola Mundo!',
                style: Style01.headline,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  'Flutter es un framework de código abierto para crear aplicaciones móviles y desktop con un enfoque en la facilidad de uso y la velocidad. Con Flutter, puedes crear aplicaciones que sean atractivas, escalables y fácilmente mantenibles.',
                  textAlign: TextAlign.justify,
                  style: Style01.bodyText,
                ),
              ),
              Builder(
                builder: (BuildContext context) {
                  return Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AboutPage(),
                            ),
                          );
                        },
                        child: Text('Acerca de...'),
                      ),
                      ElevatedButton.icon(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const MenusHomePage(),
                            ),
                          );
                        },
                        icon: Icon(Icons.menu),
                        label: Text('Ver tipos de menús'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.teal,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acerca de'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Mi aplicación'),
            Text('Este es un ejemplo de ventana "Acerca de"'),
          ],
        ),
      ),
    );
  }
}
