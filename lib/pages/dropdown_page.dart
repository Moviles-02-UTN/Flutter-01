import 'package:flutter/material.dart';

class DropdownPage extends StatefulWidget {
  const DropdownPage({super.key});

  @override
  State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
  String _selectedFruta = 'Manzana';
  String _selectedColor = 'Rojo';

  final List<String> _frutas = ['Manzana', 'Banana', 'Naranja', 'Mango', 'Frutilla'];
  final List<String> _colores = ['Rojo', 'Verde', 'Azul', 'Amarillo', 'Morado'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dropdown Button'),
        backgroundColor: const Color.fromRGBO(0, 25, 25, 1),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.arrow_drop_down_circle, size: 80, color: Colors.teal),
              const SizedBox(height: 24),
              const Text('Selecciona una fruta:', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 8),
              DropdownButton<String>(
                value: _selectedFruta,
                items: _frutas
                    .map((f) => DropdownMenuItem(value: f, child: Text(f)))
                    .toList(),
                onChanged: (val) => setState(() => _selectedFruta = val!),
              ),
              const SizedBox(height: 24),
              const Text('Selecciona un color:', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 8),
              DropdownButton<String>(
                value: _selectedColor,
                items: _colores
                    .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                    .toList(),
                onChanged: (val) => setState(() => _selectedColor = val!),
              ),
              const SizedBox(height: 32),
              Card(
                color: Colors.teal.shade50,
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    'Seleccionaste:\n$_selectedFruta · $_selectedColor',
                    textAlign: TextAlign.center,
                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
