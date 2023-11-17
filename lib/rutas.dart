import 'package:contactos/contacto.dart';
import 'package:contactos/main.dart';
import 'package:flutter/material.dart';
import 'package:contactos/contacto.dart';
import 'package:contactos/home.dart';

// Clase enumerate
enum Rutas { contacto, main, home }

class MyRoutes {
  static final rutas = {
    Rutas.main.name: (BuildContext context) => MyApp(), // main
    Rutas.contacto.name: (BuildContext context) => Contacto(
        contacto: ModalRoute.of(context)!.settings.arguments
            as Map<String, dynamic>), // contacto
    Rutas.home.name: (BuildContext context) => Home(), // home
  };
}
