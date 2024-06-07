import 'package:flutter/material.dart';

class PropositoScreen extends StatelessWidget {
  const PropositoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proposito'),
      ),
      body: _PropositoWidget(),
    );
  }
}

class _PropositoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const <Widget>[
        Proposito(
          institution: 'Propósito de la animación digital 3D',
          description:
              'La animación 3D es el arte de dar vida a aquellos objetos que no la tienen, dotándolos de movimientos y giros en un espacio tridimensional. Se puede aplicar en anuncios publicitarios, videojuegos, películas animadas, realidad virtual, aplicaciones, simulaciones e incluso en la educación.\n\nEl objetivo es que los objetos tengan vida, se adapten a las necesidades de tu nicho de mercado y logren captar la atención de tu público objetivo y transmitir el mensaje que deseas proyectar.',
        ),
        Proposito(
          institution: 'Beneficios de la Animación 3D',
          description:
              'La animación 3D tiene numerosas ventajas, entre las principales podemos destacar:\n\n* Apto para todos los públicos: la animación 3D tiene impacto tanto en la audiencia infantil como para la audiencia adulta. Esto se debe a que se le pueden dar diferentes grados de realismo a los personajes, escenarios, y objetos.\n\n* Da vida a los objetos inertes, es divertido y creativo.\n\n* Posibilita dominar con más facilidad todo lo que sucederá en el anuncio o producto a crear.\n\n* Es innovador.\n\n* Es visual y permite que sea más sencillo contar una historia y llamar la atención a la vez.',
        ),
        Proposito2(
          institution: 'Impacto de la animación 3D en publicidad',
          description:
              'Ha quedado demostrado que los anuncios publicitarios con animación 3D tienen un gran impacto positivo de retención entre los espectadores y es sin duda una herramienta que obtiene grandes resultados.\n\nAfortunadamente las nuevas tecnologías permiten que se puedan crear imágenes increíbles con vida gracias a las técnicas en 3 dimensiones, donde los personajes y escenarios cobran sentido y son capaces de penetrar en la mente de los consumidores.\n\nAlgunos ejemplos del éxito de la animación 3D en la publicidad son reflejados por marcas como Burger King, Actimel o el muñeco Michelín.',
          image: 'assets/doritos.jpg',
        ),
        Proposito2(
          institution: 'Simulaciones creadas con 3D',
          description:
              'Crear simulaciones en 3D puede ayudar muchísimo a predecir el comportamiento futuro físico de los productos, elementos o escenarios que se desea proyectar a los consumidores o espectadores.\n\nLa simulación es ideal para proyectos inmobiliarios dado que por ejemplo puede mostrar el resultado final de una reforma para ganar la confianza del cliente, es más visual y permite que el cliente se haga una idea gráfica de lo que puede esperar.',
          image: 'assets/arquitectura-industrial.jpg',
        ),
      ],
    );
  }
}

class Proposito extends StatelessWidget {
  final String institution;
  final String description;

  const Proposito({
    super.key,
    required this.institution,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(width: 16),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
            child: Text(
              institution,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
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

class Proposito2 extends StatelessWidget {
  final String institution;
  final String description;
  final String image;

  const Proposito2({
    super.key,
    required this.institution,
    required this.description,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      margin: const EdgeInsets.symmetric(horizontal: 2, vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const SizedBox(width: 16),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 5),
            child: Text(
              institution,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Text(
              description,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Image.asset(
              image,
              width: 500,
              height: 200,
            ),
          ),
        ],
      ),
    );
  }
}
