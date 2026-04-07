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
      title: 'Trabajo de Investigación',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Trabajo de Investigación', style: Style01.appBarTitle),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 69, 148, 1),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image(image: AssetImage('assets/imgs/pacifico-UTN.png')),
                  Text(
                    '¿Qué es Flutter?',
                    style: Style01.headline,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text(
                      'Framework de código abierto para crear aplicaciones móviles y desktop con un enfoque en la facilidad de uso y la velocidad. Con Flutter, puedes crear aplicaciones que sean atractivas, escalables y fácilmente mantenibles.',
                      textAlign: TextAlign.justify,
                      style: Style01.bodyText,
                    ),
                  ),
                  Builder(
                    builder: (buttonContext) => ElevatedButton.icon(
                      onPressed: () {
                        Navigator.of(buttonContext).push(
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
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
