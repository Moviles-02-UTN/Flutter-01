import 'package:flutter/material.dart';

// Pantalla demostrativa de Navigation Drawer.
class DrawerPage extends StatefulWidget {
    const DrawerPage({super.key});

    @override
    State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {
    // Seccion actualmente seleccionada.
    String _currentSection = 'Inicio';

    // Actualiza la seccion y cierra el drawer.
    void _navigate(String section) {
        setState(() => _currentSection = section);
        Navigator.pop(context);
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            // Barra superior de la pantalla.
            appBar: AppBar(
                title: const Text('Navigation Drawer'),
                backgroundColor: const Color.fromRGBO(0, 25, 25, 1),
                foregroundColor: Colors.white,
            ),
            // Menu lateral desplegable.
            drawer: Drawer(
                child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                        // Encabezado del drawer con datos de usuario.
                        const DrawerHeader(
                            decoration: BoxDecoration(color: Color.fromRGBO(0, 25, 25, 1)),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                    CircleAvatar(
                                        radius: 30,
                                        backgroundColor: Colors.teal,
                                        child: Icon(Icons.person, size: 30, color: Colors.white),
                                    ),
                                    SizedBox(height: 8),
                                    Text('Usuario', style: TextStyle(color: Colors.white, fontSize: 18)),
                                    Text(
                                        'usuario@email.com',
                                        style: TextStyle(color: Colors.white70, fontSize: 12),
                                    ),
                                ],
                            ),
                        ),
                        // Opcion de inicio.
                        ListTile(
                            leading: const Icon(Icons.home),
                            title: const Text('Inicio'),
                            selected: _currentSection == 'Inicio',
                            selectedColor: Colors.teal,
                            onTap: () => _navigate('Inicio'),
                        ),
                        // Opcion de perfil.
                        ListTile(
                            leading: const Icon(Icons.person),
                            title: const Text('Perfil'),
                            selected: _currentSection == 'Perfil',
                            selectedColor: Colors.teal,
                            onTap: () => _navigate('Perfil'),
                        ),
                        // Opcion de configuracion.
                        ListTile(
                            leading: const Icon(Icons.settings),
                            title: const Text('Configuración'),
                            selected: _currentSection == 'Configuración',
                            selectedColor: Colors.teal,
                            onTap: () => _navigate('Configuración'),
                        ),
                        const Divider(),
                        // Opcion para cerrar sesion.
                        ListTile(
                            leading: const Icon(Icons.logout, color: Colors.red),
                            title: const Text('Cerrar sesión', style: TextStyle(color: Colors.red)),
                            onTap: () => Navigator.pop(context),
                        ),
                    ],
                ),
            ),
            // Contenido central de la pantalla.
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        // Icono principal de la vista.
                        const Icon(Icons.menu, size: 80, color: Colors.teal),
                        const SizedBox(height: 16),
                        // Nombre de la seccion seleccionada.
                        Text(
                            _currentSection,
                            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 16),
                        // Instruccion para abrir el menu lateral.
                        const Text(
                            'Toca el ícono ☰ arriba a la izquierda\npara abrir el menú lateral.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                    ],
                ),
            ),
        );
    }
}
