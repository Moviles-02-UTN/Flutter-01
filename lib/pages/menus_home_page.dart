import 'package:flutter/material.dart';
import 'bottom_sheet_page.dart';
import 'dropdown_page.dart';
import 'drawer_page.dart';
import 'bottom_nav_page.dart';
import 'popup_menu_page.dart';
import 'modal_bottom_sheet_page.dart';

class MenusHomePage extends StatelessWidget {
  const MenusHomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
      appBar: AppBar(
        title: const Text('Tipos de Menús'),
        backgroundColor: const Color.fromRGBO(0, 25, 25, 1),
        foregroundColor: Colors.white,
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: menus.length,
        separatorBuilder: (_, __) => const SizedBox(height: 8),
        itemBuilder: (context, i) {
          return Card(
            elevation: 2,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.teal.shade100,
                child: Icon(menus[i]['icon'] as IconData, color: Colors.teal.shade800),
              ),
              title: Text(
                menus[i]['title'] as String,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(menus[i]['subtitle'] as String),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
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
