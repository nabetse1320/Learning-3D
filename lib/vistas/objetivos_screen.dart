import 'package:flutter/material.dart';

class ObjetivosScreen extends StatelessWidget {
  const ObjetivosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Objetivos'),
      ),
      body: _ObjetivoWidget(),
    );
  }
}

class _ObjetivoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const <Widget>[
        ObjetivoItem(
          institution: 'Objetivo general',
          description:
              'Dar a conocer aspectos generales de la Animación digital en 3D',
          icono: Icons.subdirectory_arrow_right,
        ),
        ObjetivoItem(
          institution: 'Objetivos específicos',
          description:
              '* Aprender sobre las principales dirferencias entre la animacion2D y animación 3D.\n\n* Conocer el proceso de creación de una animacion en 3D.',
          icono: Icons.subdirectory_arrow_right,
        ),
      ],
    );
  }
}

class ObjetivoItem extends StatelessWidget {
  final String institution;
  final String description;
  final IconData icono;

  const ObjetivoItem({
    super.key,
    required this.institution,
    required this.description,
    required this.icono,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      margin: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                child: Icon(
                  icono,
                  size: 50,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 30, 0),
                  child: Text(
                    institution,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
