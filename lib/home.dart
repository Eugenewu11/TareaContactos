
import 'package:flutter/material.dart';
import 'package:contactos/rutas.dart';

class Home extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
  List<Map<String, dynamic>> contactos = [
    {
      "nombre": "Eugene Wu",
      "telefono": "33506220",
      "email": "eugene.wu@unah.hn",
    },
    {
      "nombre": "Pablo Clavito",
      "telefono": "98813157",
      "email": "pbclavo@gmail.com",
    },
    {
      "nombre": "Samuel de Luque",
      "telefono": "99524187",
      "email": "SamuLuk@gmail.com",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contactos"),
      ),
      body: Container(
        child: Column(
          children: [
            // Buscador no funcional
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Buscar",
                  icon: Icon(Icons.search),
                ),
              ),
            ),
            // Lista de contactos
            Expanded(
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                  indent: 20,
                  endIndent: 20,
                ),
                itemCount: contactos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(contactos[index]["nombre"]),
                    leading: CircleAvatar(
                      child: Text(
                        contactos[index]["nombre"].substring(0, 1),
                      ),
                    ),
                    onTap: () {
                      // Navegación a la página de información de contacto de la tarea 2.0
                      Navigator.pushNamed(
                        context,
                        Rutas.contacto.name,
                        arguments: contactos[index],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Acción cuando se presiona el botón (puedes dejarlo vacío por ahora o agregar funcionalidad)
        },
        child: Icon(Icons.dialpad),
        backgroundColor: Colors.blue,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}