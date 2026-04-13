import 'package:flutter/material.dart';

// Pantalla demostrativa de BottomNavigationBar.
class BottomNavPage extends StatefulWidget {
    const BottomNavPage({super.key});

    @override
    State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
    // Indice seleccionado en la barra inferior.
    int _currentIndex = 0;

    // Datos de cada seccion para reutilizar en la UI.
    final List<_SectionData> _sections = const [
        _SectionData(icon: Icons.home, label: 'Inicio', color: Colors.teal),
        _SectionData(icon: Icons.search, label: 'Buscar', color: Colors.blue),
        _SectionData(icon: Icons.favorite, label: 'Favoritos', color: Colors.red),
        _SectionData(icon: Icons.person, label: 'Perfil', color: Colors.purple),
    ];

    @override
    Widget build(BuildContext context) {
        // Seccion activa segun el indice seleccionado.
        final section = _sections[_currentIndex];

        return Scaffold(
            // Barra superior de la pantalla.
            appBar: AppBar(
                title: const Text('Bottom Navigation Bar'),
                backgroundColor: const Color.fromRGBO(0, 25, 25, 1),
                foregroundColor: Colors.white,
            ),
            // Contenido principal que cambia segun la seccion.
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        // Icono representativo de la seccion.
                        Icon(section.icon, size: 80, color: section.color),
                        const SizedBox(height: 16),
                        // Nombre de la seccion actual.
                        Text(
                            section.label,
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: section.color,
                            ),
                        ),
                        const SizedBox(height: 8),
                        // Mensaje de ayuda al usuario.
                        const Text(
                            'Toca los íconos de abajo para cambiar de sección.',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                        ),
                    ],
                ),
            ),
            // Barra de navegacion inferior.
            bottomNavigationBar: BottomNavigationBar(
                currentIndex: _currentIndex,
                selectedItemColor: Colors.teal,
                unselectedItemColor: Colors.grey,
                type: BottomNavigationBarType.fixed,
                onTap: (i) => setState(() => _currentIndex = i),
                items: _sections
                    .map((s) => BottomNavigationBarItem(icon: Icon(s.icon), label: s.label))
                    .toList(),
            ),
        );
    }
}

class _SectionData {
    final IconData icon;
    final String label;
    final Color color;

    const _SectionData({required this.icon, required this.label, required this.color});
}
