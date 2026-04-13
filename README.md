# 📱 Proyecto Flutter: Tipos de Menús

![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)
![Dart](https://img.shields.io/badge/Dart-%230175C2.svg?style=for-the-badge&logo=dart&logoColor=white)

## 📋 Información General

* **Universidad:** Universidad Técnica Nacional (UTN) - Sede Pacífico
* **Curso:** ITI-721 - Desarrollo de Aplicaciones para Dispositivos Móviles II
* **Profesor:** Jorge Ruiz.
* **Periodo:** 1C-2026.
* **Proyecto:** appflutter_01
* **Descripción:** Aplicación demostrativa de widgets de navegación y menús en Flutter.
* **Integrantes:**
    * Luis Alejandro López Reyes
    * Sebastián Rodriguez Mesen
    * Samiel Marín Cambronero

## 📝 Documento paso a paso

- Guía completa: [https://docs.google.com/document/d/1wfS55FDrkhcB0yk-Y6auuN2Oc7gi8K38BVe9wZzNWms/edit?tab=t.0#heading=h.pj806fwn9pbf](https://docs.google.com/document/d/1wfS55FDrkhcB0yk-Y6auuN2Oc7gi8K38BVe9wZzNWms/edit?usp=sharing)

## 🏗️ Estructura del Proyecto

El código principal está en lib/.

La organización actual es:

- lib/main.dart: Punto de entrada de la app. Define la pantalla principal y navegación al menú de ejemplos.
- lib/styles/style_01.dart: Estilos de texto reutilizables (AppBar, títulos y cuerpo).
- lib/pages: Colección de pantallas con ejemplos de menús.
- lib/pages/menus_home_page.dart: Menú central que lista y abre todos los ejemplos.
- lib/pages/bottom_sheet_page.dart: Ejemplo de Bottom Sheet con acciones rápidas.
- lib/pages/dropdown_page.dart: Ejemplo de DropdownButton para selección de opciones.
- lib/pages/drawer_page.dart: Ejemplo de Navigation Drawer lateral.
- lib/pages/bottom_nav_page.dart: Ejemplo de BottomNavigationBar con secciones.
- lib/pages/popup_menu_page.dart: Ejemplo de PopupMenu en AppBar.
- lib/pages/modal_bottom_sheet_page.dart: Ejemplo de Modal Bottom Sheet con controles (slider y switch).

Recursos estáticos:

- assets/imgs/pacifico-UTN.png: Imagen usada en la pantalla principal.

## ✨ Funcionalidades Incluidas

- Pantalla inicial con imagen institucional y texto introductorio.
- Navegación a una pantalla índice de tipos de menús.
- 6 ejemplos funcionales de menús en Flutter:
- Bottom Sheet
- Dropdown Button
- Navigation Drawer
- Bottom Navigation Bar
- Popup Menu
- Modal Bottom Sheet con estado interno y persistencia de selección

## 📦 Dependencias

Dependencias de producción definidas en pubspec.yaml:

- Flutter SDK
- cupertino_icons: ^1.0.8

Dependencias de desarrollo:

- flutter_test
- flutter_lints: ^6.0.0

Importante: no hay librerías externas adicionales que instalar manualmente aparte de las declaradas en pubspec.yaml.

## 🚀 Configuración Inicial

1. Clonar el repositorio.
2. Tener Flutter SDK instalado y configurado en el PATH.
3. En la raíz del proyecto, ejecutar:

	flutter pub get

## ▶️ Ejecución del Proyecto

Con emulador abierto o dispositivo conectado:

	flutter run

Opcional, para ejecutar en web:

	flutter run -d chrome

Opcional, para verificar calidad de código:

	flutter analyze

Opcional, para correr pruebas:

	flutter test

## 🗂️ Plataformas Soportadas

El proyecto incluye carpetas para:

- Android
- iOS
- Web
- Windows
- macOS
- Linux

## 📚 Recursos Útiles

- Documentación oficial de Flutter: https://docs.flutter.dev/
- Guía de instalación de Flutter: https://docs.flutter.dev/get-started/install
