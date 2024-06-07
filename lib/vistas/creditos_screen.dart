import 'package:flutter/material.dart';

class Usuario {
  final String nombre;
  final String correo;
  final String foto;

  Usuario({required this.foto, required this.nombre, required this.correo});
}

class CreditosScreen extends StatelessWidget {
  final List<Usuario> usuarios = [
    Usuario(
      foto: 'assets/esteban.jpeg',
      nombre: 'Esteban Guevara Hernández',
      correo: 'esteban.guevara@unisimon.edu.co',
    ),
    Usuario(
        foto: 'assets/santiago.jpeg',
        nombre: 'Santiago Hernández Fontalvo',
        correo: 'santiago.hernandez@unisimon.edu.co'),
    Usuario(
        foto: 'assets/jeff.jpeg',
        nombre: 'Jefferson Torrecilla Torres',
        correo: 'jefferson.torrecilla@unisimon.edu.co'),
  ];

  CreditosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creditos'),
      ),
      body: ListView.builder(
        itemCount: usuarios.length,
        itemBuilder: (BuildContext context, int index) {
          return _buildUsuarioCard(usuarios[index]);
        },
      ),
    );
  }

  Widget _buildUsuarioCard(Usuario usuario) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(usuario.foto),
        ),
        title: Text(usuario.nombre),
        subtitle: Text(usuario.correo),
      ),
    );
  }
}
