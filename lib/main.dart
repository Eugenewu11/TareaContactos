import 'package:flutter/material.dart';
import 'package:contactos/rutas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Rutas.home.name,
      routes: MyRoutes.rutas,
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
          builder: (BuildContext context) => Scaffold(
            appBar: AppBar(),
            body: Center(
              child: Text('La ruta ${settings.name} no existe'),
            ),
          ),
        );
      },
    );
  }
}