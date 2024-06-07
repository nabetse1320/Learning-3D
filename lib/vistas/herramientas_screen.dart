import 'package:flutter/material.dart';

class HerramientasScreen extends StatelessWidget {
  const HerramientasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Herramientas'),
        ),
        body: _HerramientasWidget());
  }
}

class _HerramientasWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const <Widget>[
        HerramientaItem(
          institution: 'Blender',
          degree: 'Animación 3D',
          date: 'Gratuito',
          description:
              'Dentro de los programas de animación 3D gratuitos, destaca Blender que, además de gratuito, es de código abierto, lo que significa que se mejora constantemente.  ',
          image: 'assets/blende.png',
        ),
        HerramientaItem(
          institution: 'Autodesk Maya.',
          degree: 'Animación 3D',
          date: 'Pago',
          description:
              'Se trata de un software de renderización, simulación, modelado y animación con un conjunto de herramientas que se utilizan para crear animaciones, entornos, gráficos de movimiento, realidad virtual y creación de personajes.',
          image: 'assets/maya.png',
        ),
        HerramientaItem(
          institution: 'Cinema 4D',
          degree: 'Animación 3D',
          date: 'Bajo coste economico',
          description:
              'Hablamos de uno de los programas de animación 3D más fáciles e intuitivos y, además, tiene un bajo coste económico. Cinema 4D es un programa de animación 3D que contiene un motor de modelado 3D para generación de geometría, asignación de texturas y materiales, rendering, iluminación, animación y con grandes capacidades de pintado en cuerpos, con el que se consiguen imágenes de gran realismo.',
          image: 'assets/cinema.png',
        ),
        HerramientaItem(
          institution: 'Sketchup',
          degree: 'Animación 3D',
          date: 'Gratuita - pago',
          description:
              'Uno de los programas veteranos del modelado 3D. Una de sus grandes ventajas, además de que se trata de un programa muy intuitivo para aprender, es que tiene una gran librería de diseños listos para importar en tus diseños, algo que es muy útil para el diseño de interiores y arquitectura.',
          image: 'assets/sketchUp.png',
        ),
      ],
    );
  }
}

class HerramientaItem extends StatelessWidget {
  final String institution;
  final String degree;
  final String date;
  final String description;
  final String image;

  const HerramientaItem({
    super.key,
    required this.institution,
    required this.degree,
    required this.date,
    required this.description,
    required this.image,
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
                child: Image.asset(
                  image,
                  width: 100,
                  height: 100,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 30, 30, 0),
                      child: Text(
                        institution,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      degree,
                      style: const TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
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
