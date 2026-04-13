import 'package:flutter/material.dart';
import 'styles/style_01.dart';
import 'pages/menus_home_page.dart';

// Punto de entrada de la aplicacion.
void main() {
    runApp(const MyApp());
}

// Widget raiz de la aplicacion.
class MyApp extends StatelessWidget {
    const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
        // Configuracion general de la aplicacion.
        return MaterialApp(
            title: 'Trabajo de Investigación',
            // Estructura principal de la pantalla inicial.
            home: Scaffold(
                // Encabezado principal de la app.
                appBar: AppBar(
                    title: Text('Trabajo de Investigación', style: Style01.appBarTitle),
                    centerTitle: true,
                    backgroundColor: const Color.fromRGBO(0, 69, 148, 1),
                ),
                // Contenido de bienvenida desplazable.
                body: SafeArea(
                    child: SingleChildScrollView(
                        padding: const EdgeInsets.all(16),
                        child: Center(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                    // Logo de la app.
                                    const Image(image: AssetImage('assets/imgs/pacifico-UTN.png')),
                                    // Titulo introductorio.
                                    const Text(
                                        '¿Qué es Flutter?',
                                        style: Style01.headline,
                                    ),
                                    // Descripcion de Flutter.
                                    const Padding(
                                        padding: EdgeInsets.all(18.0),
                                        child: Text(
                                            'Framework de código abierto para crear aplicaciones móviles y desktop con un enfoque en la facilidad de uso y la velocidad. Con Flutter, puedes crear aplicaciones que sean atractivas, escalables y fácilmente mantenibles.',
                                            textAlign: TextAlign.justify,
                                            style: Style01.bodyText,
                                        ),
                                    ),
                                    // Boton para navegar a la seccion de menus.
                                    Builder(
                                        builder: (buttonContext) => ElevatedButton.icon(
                                            onPressed: () {
                                                Navigator.of(buttonContext).push(
                                                    MaterialPageRoute(
                                                        builder: (context) => const MenusHomePage(),
                                                    ),
                                                );
                                            },
                                            icon: const Icon(Icons.menu),
                                            label: const Text('Ver tipos de menús'),
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
