import 'package:flutter/material.dart';

// Pantalla para demostrar un Bottom Sheet simple.
class BottomSheetPage extends StatelessWidget {
    const BottomSheetPage({super.key});

    // Abre un Bottom Sheet con acciones rapidas.
    void _showBottomSheet(BuildContext context) {
        showModalBottomSheet(
            context: context,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                        // Titulo del panel de opciones.
                        const Text(
                            'Opciones',
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        const Divider(),
                        // Opcion para compartir.
                        ListTile(
                            leading: const Icon(Icons.share, color: Colors.teal),
                            title: const Text('Compartir'),
                            onTap: () => Navigator.pop(context),
                        ),
                        // Opcion para editar.
                        ListTile(
                            leading: const Icon(Icons.edit, color: Colors.blue),
                            title: const Text('Editar'),
                            onTap: () => Navigator.pop(context),
                        ),
                        // Opcion para eliminar.
                        ListTile(
                            leading: const Icon(Icons.delete, color: Colors.red),
                            title: const Text('Eliminar'),
                            onTap: () => Navigator.pop(context),
                        ),
                    ],
                ),
            ),
        );
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            // Barra superior de la pantalla.
            appBar: AppBar(
                title: const Text('Bottom Sheet'),
                backgroundColor: const Color.fromRGBO(0, 25, 25, 1),
                foregroundColor: Colors.white,
            ),
            // Cuerpo principal con descripcion y boton de apertura.
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        // Icono principal de la demostracion.
                        const Icon(Icons.vertical_align_bottom, size: 80, color: Colors.teal),
                        const SizedBox(height: 16),
                        // Texto descriptivo del componente.
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 32),
                            child: Text(
                                'Muestra opciones desde la parte inferior.\nÚtil para acciones rápidas.',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                            ),
                        ),
                        const SizedBox(height: 32),
                        // Boton que abre el Bottom Sheet.
                        ElevatedButton.icon(
                            onPressed: () => _showBottomSheet(context),
                            icon: const Icon(Icons.touch_app),
                            label: const Text('Mostrar Bottom Sheet'),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.teal,
                                foregroundColor: Colors.white,
                            ),
                        ),
                    ],
                ),
            ),
        );
    }
}
