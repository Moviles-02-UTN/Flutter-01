import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {
  int _currentIndex = 0;

  final List<_SectionData> _sections = const [
    _SectionData(icon: Icons.home, label: 'Inicio', color: Colors.teal),
    _SectionData(icon: Icons.search, label: 'Buscar', color: Colors.blue),
    _SectionData(icon: Icons.favorite, label: 'Favoritos', color: Colors.red),
    _SectionData(icon: Icons.person, label: 'Perfil', color: Colors.purple),
  ];

  @override
  Widget build(BuildContext context) {
    final section = _sections[_currentIndex];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
        backgroundColor: const Color.fromRGBO(0, 25, 25, 1),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(section.icon, size: 80, color: section.color),
            const SizedBox(height: 16),
            Text(
              section.label,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: section.color),
            ),
            const SizedBox(height: 8),
            const Text(
              'Toca los íconos de abajo para cambiar de sección.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
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
