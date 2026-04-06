import 'package:flutter/material.dart';

class PopupMenuPage extends StatefulWidget {
  const PopupMenuPage({super.key});

  @override
  State<PopupMenuPage> createState() => _PopupMenuPageState();
}

class _PopupMenuPageState extends State<PopupMenuPage> {
  String _lastSelected = 'Ninguna acción todavía';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup Menu'),
        backgroundColor: const Color.fromRGBO(0, 25, 25, 1),
        foregroundColor: Colors.white,
        actions: [
          PopupMenuButton<String>(
            onSelected: (val) => setState(() => _lastSelected = val),
            itemBuilder: (context) => [
              const PopupMenuItem(
                value: 'Editar',
                child: Row(children: [Icon(Icons.edit), SizedBox(width: 8), Text('Editar')]),
              ),
              const PopupMenuItem(
                value: 'Compartir',
                child: Row(children: [Icon(Icons.share), SizedBox(width: 8), Text('Compartir')]),
              ),
              const PopupMenuItem(
                value: 'Favorito',
                child: Row(children: [Icon(Icons.favorite), SizedBox(width: 8), Text('Favorito')]),
              ),
              const PopupMenuDivider(),
              const PopupMenuItem(
                value: 'Eliminar',
                child: Row(children: [
                  Icon(Icons.delete, color: Colors.red),
                  SizedBox(width: 8),
                  Text('Eliminar', style: TextStyle(color: Colors.red)),
                ]),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.more_vert, size: 80, color: Colors.teal),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32),
              child: Text(
                'Toca los 3 puntos ⋮ en la esquina\nsuperior derecha del AppBar.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 32),
            Card(
              color: Colors.teal.shade50,
              margin: const EdgeInsets.symmetric(horizontal: 32),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  'Última acción:\n$_lastSelected',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
