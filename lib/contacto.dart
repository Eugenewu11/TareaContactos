import 'package:flutter/material.dart';
import 'package:contactos/rutas.dart';

class Contacto extends StatelessWidget {
  final Map<String, dynamic> contacto;

  Contacto({required this.contacto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Perfil de Contacto',
          style: TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20),
              CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text(
                  contacto['nombre'].substring(0, 1),
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),

              SizedBox(height: 15),
              Text(
                contacto['nombre'],
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 30),
              // Información específica del contacto
              ListTile(
                leading: Icon(Icons.phone),
                title: Text('Teléfono: ${contacto['telefono']}'),
              ),
              ListTile(
                leading: Icon(Icons.email),
                title: Text('Correo: ${contacto['email']}'),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[300],
    );
  }
}
