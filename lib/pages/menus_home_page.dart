import 'package:flutter/material.dart';
import 'bottom_sheet_page.dart';
import 'dropdown_page.dart';
import 'drawer_page.dart';
import 'bottom_nav_page.dart';
import 'popup_menu_page.dart';
import 'modal_bottom_sheet_page.dart';

// Pantalla de inicio para navegar entre ejemplos de menus.
class MenusHomePage extends StatelessWidget {
    const MenusHomePage({super.key});

    @override
    Widget build(BuildContext context) {
        // Catalogo de menus que se mostraran en la lista.
        final menus = [
            {
                'title': '1. Bottom Sheet',
                'subtitle': 'Opciones que suben desde abajo',
                'icon': Icons.vertical_align_bottom,
                'page': const BottomSheetPage(),
            },
            {
                'title': '2. Dropdown Button',
                'subtitle': 'Selector de opciones en lista',
                'icon': Icons.arrow_drop_down_circle,
                'page': const DropdownPage(),
            },
            {
                'title': '3. Navigation Drawer',
                'subtitle': 'Menú lateral deslizable',
                'icon': Icons.menu,
                'page': const DrawerPage(),
            },
            {
                'title': '4. Bottom Navigation Bar',
                'subtitle': 'Barra de navegación fija abajo',
                'icon': Icons.tab,
                'page': const BottomNavPage(),
            },
            {
                'title': '5. Popup Menu',
                'subtitle': 'Menú contextual con los 3 puntos ⋮',
                'icon': Icons.more_vert,
                'page': const PopupMenuPage(),
            },
            {
                'title': '6. Modal Bottom Sheet',
                'subtitle': 'Bottom sheet con contenido complejo',
                'icon': Icons.layers,
                'page': const ModalBottomSheetPage(),
            },
        ];

        return Scaffold(
            // Barra superior con titulo del listado.
            appBar: AppBar(
                title: const Text('Tipos de Menús'),
                backgroundColor: const Color.fromRGBO(0, 25, 25, 1),
                foregroundColor: Colors.white,
            ),
            // Lista de accesos a cada ejemplo de menu.
            body: ListView.separated(
                padding: const EdgeInsets.all(16),
                itemCount: menus.length,
                separatorBuilder: (_, __) => const SizedBox(height: 8),
                itemBuilder: (context, i) {
                    return Card(
                        elevation: 2,
                        child: ListTile(
                            // Icono del tipo de menu.
                            leading: CircleAvatar(
                                backgroundColor: Colors.teal.shade100,
                                child: Icon(
                                    menus[i]['icon'] as IconData,
                                    color: Colors.teal.shade800,
                                ),
                            ),
                            // Nombre del ejemplo.
                            title: Text(
                                menus[i]['title'] as String,
                                style: const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            // Descripcion breve del ejemplo.
                            subtitle: Text(menus[i]['subtitle'] as String),
                            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                            // Navegacion hacia la pantalla seleccionada.
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(builder: (_) => menus[i]['page'] as Widget),
                            ),
                        ),
                    );
                },
            ),
        );
    }
}
