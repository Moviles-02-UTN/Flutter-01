import 'package:flutter/material.dart';

// Pantalla de ejemplo para DropdownButton.
class DropdownPage extends StatefulWidget {
    const DropdownPage({super.key});

    @override
    State<DropdownPage> createState() => _DropdownPageState();
}

class _DropdownPageState extends State<DropdownPage> {
    // Valores seleccionados en los dropdowns.
    String _selectedFruta = 'Manzana';
    String _selectedColor = 'Rojo';

    // Opciones disponibles en cada lista.
    final List<String> _frutas = ['Manzana', 'Banana', 'Naranja', 'Mango', 'Frutilla'];
    final List<String> _colores = ['Rojo', 'Verde', 'Azul', 'Amarillo', 'Morado'];

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            // Barra superior de la pantalla.
            appBar: AppBar(
                title: const Text('Dropdown Button'),
                backgroundColor: const Color.fromRGBO(0, 25, 25, 1),
                foregroundColor: Colors.white,
            ),
            // Contenido principal con dos dropdowns.
            body: Center(
                child: Padding(
                    padding: const EdgeInsets.all(24),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                            // Icono representativo del ejemplo.
                            const Icon(Icons.arrow_drop_down_circle, size: 80, color: Colors.teal),
                            const SizedBox(height: 24),
                            // Etiqueta para seleccionar fruta.
                            const Text('Selecciona una fruta:', style: TextStyle(fontSize: 16)),
                            const SizedBox(height: 8),
                            // Dropdown de frutas.
                            DropdownButton<String>(
                                value: _selectedFruta,
                                items: _frutas
                                    .map((f) => DropdownMenuItem(value: f, child: Text(f)))
                                    .toList(),
                                onChanged: (val) => setState(() => _selectedFruta = val!),
                            ),
                            const SizedBox(height: 24),
                            // Etiqueta para seleccionar color.
                            const Text('Selecciona un color:', style: TextStyle(fontSize: 16)),
                            const SizedBox(height: 8),
                            // Dropdown de colores.
                            DropdownButton<String>(
                                value: _selectedColor,
                                items: _colores
                                    .map((c) => DropdownMenuItem(value: c, child: Text(c)))
                                    .toList(),
                                onChanged: (val) => setState(() => _selectedColor = val!),
                            ),
                            const SizedBox(height: 32),
                            // Tarjeta de resumen con lo seleccionado.
                            Card(
                                color: Colors.teal.shade50,
                                child: Padding(
                                    padding: const EdgeInsets.all(16),
                                    child: Text(
                                        'Seleccionaste:\n$_selectedFruta · $_selectedColor',
                                        textAlign: TextAlign.center,
                                        style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                        ),
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
