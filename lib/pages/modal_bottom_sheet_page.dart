import 'package:flutter/material.dart';

// Pantalla de ejemplo para un Modal Bottom Sheet con controles.
class ModalBottomSheetPage extends StatefulWidget {
    const ModalBottomSheetPage({super.key});

    @override
    State<ModalBottomSheetPage> createState() => _ModalBottomSheetPageState();
}

class _ModalBottomSheetPageState extends State<ModalBottomSheetPage> {
    // Estado global mostrado en la pantalla.
    double _rating = 3;
    bool _notifications = true;

    // Abre un modal con controles y guarda cambios al confirmar.
    void _showComplexSheet(BuildContext context) {
        // Copiamos los valores actuales para el estado interno del sheet.
        double tempRating = _rating;
        bool tempNotifications = _notifications;

        showModalBottomSheet(
            context: context,
            // Permite que el sheet crezca cuando aparece el teclado.
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            builder: (context) => StatefulBuilder(
                // StatefulBuilder permite setState local dentro del sheet.
                builder: (context, setSheetState) => Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom,
                        left: 24,
                        right: 24,
                        top: 24,
                    ),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            // Encabezado del modal.
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                    const Text(
                                        'Configuración',
                                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                    ),
                                    IconButton(
                                        icon: const Icon(Icons.close),
                                        onPressed: () => Navigator.pop(context),
                                    ),
                                ],
                            ),
                            const Divider(),
                            const SizedBox(height: 8),
                            // Texto y control de calificacion.
                            Text(
                                'Calificación: ${tempRating.toStringAsFixed(0)} ⭐',
                                style: const TextStyle(fontSize: 16),
                            ),
                            Slider(
                                value: tempRating,
                                min: 1,
                                max: 5,
                                divisions: 4,
                                activeColor: Colors.teal,
                                label: tempRating.toStringAsFixed(0),
                                onChanged: (val) => setSheetState(() => tempRating = val),
                            ),
                            // Control para activar o desactivar notificaciones.
                            SwitchListTile(
                                title: const Text('Notificaciones'),
                                activeThumbColor: Colors.teal,
                                value: tempNotifications,
                                onChanged: (val) => setSheetState(() => tempNotifications = val),
                            ),
                            const SizedBox(height: 16),
                            // Boton para guardar cambios en el estado principal.
                            SizedBox(
                                width: double.infinity,
                                child: ElevatedButton(
                                    onPressed: () {
                                        setState(() {
                                            _rating = tempRating;
                                            _notifications = tempNotifications;
                                        });
                                        Navigator.pop(context);
                                    },
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.teal,
                                        foregroundColor: Colors.white,
                                    ),
                                    child: const Text('Guardar'),
                                ),
                            ),
                            const SizedBox(height: 16),
                        ],
                    ),
                ),
            ),
        );
    }

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            // Barra superior de la pantalla.
            appBar: AppBar(
                title: const Text('Modal Bottom Sheet'),
                backgroundColor: const Color.fromRGBO(0, 25, 25, 1),
                foregroundColor: Colors.white,
            ),
            // Contenido principal y resumen del estado.
            body: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        // Icono principal de la vista.
                        const Icon(Icons.layers, size: 80, color: Colors.teal),
                        const SizedBox(height: 16),
                        // Descripcion de este tipo de menu.
                        const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 32),
                            child: Text(
                                'Como el Bottom Sheet pero con formularios,\nsliders, switches y más contenido.',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 16),
                            ),
                        ),
                        const SizedBox(height: 24),
                        // Tarjeta que muestra el estado actual.
                        Card(
                            color: Colors.teal.shade50,
                            margin: const EdgeInsets.symmetric(horizontal: 32),
                            child: Padding(
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                    children: [
                                        Text(
                                            'Calificación: ${_rating.toStringAsFixed(0)} ⭐',
                                            style: const TextStyle(fontSize: 16),
                                        ),
                                        const SizedBox(height: 4),
                                        Text(
                                            'Notificaciones: ${_notifications ? "Activadas ✓" : "Desactivadas ✗"}',
                                            style: const TextStyle(fontSize: 16),
                                        ),
                                    ],
                                ),
                            ),
                        ),
                        const SizedBox(height: 24),
                        // Boton para abrir el modal configurable.
                        ElevatedButton.icon(
                            onPressed: () => _showComplexSheet(context),
                            icon: const Icon(Icons.tune),
                            label: const Text('Abrir configuración'),
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
