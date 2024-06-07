import 'package:flutter/material.dart';

class ProcesoScreen extends StatelessWidget {
  const ProcesoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proceso'),
      ),
      body: _ProcesoWidget(),
    );
  }
}

class _ProcesoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const <Widget>[
        Procesos(
          institution: 'Proceso',
          description:
              'El proceso de animación 3D comienza con el desarrollo de un argumento y un guión gráfico, el esbozo de los personajes en 3D, la creación de los diseños de fondo y el establecimiento de las bases para el proceso de producción. El proceso completo de animación es bastante complejo y lleno de matices, pero he aquí las principales fases.',
        ),
        Proposito2(
          institution: 'Modelado.',
          description:
              'Antes de que podamos tener una escena que funcione con personajes e interacciones, primero tenemos que construir nuestros objetos 3D. Como ya hemos dicho, los objetos se basan en modelos informáticos 3D. Un modelo básico es una malla 3D que consiste en puntos, líneas y curvas dispuestas de tal manera que se mapea el objeto. Un ordenador ve los modelos como puras formas geométricas. No es hasta que se añaden colores y texturas que el mapa del objeto cobra vida.',
          image:
              'https://anotherindiestudio.com/wp-content/uploads/2018/01/Buu0012.jpg',
        ),
        Proposito2(
          institution: 'Rigging',
          description:
              'Pero antes de que el personaje pueda moverse, necesita un esqueleto controlable, al igual que los humanos y los animales. El rigging es el proceso de producción de ese esqueleto. Una vez formado el esqueleto, el modelo 3D (también llamado piel) se une al rig para que el personaje esté listo para ser animado.',
          image:
              'https://blenderartists.org/uploads/default/13f89bebb4d35f3cd478bba3833bc1d47f1cb157',
        ),
        Proposito2(
          institution: 'Composición de escena y animación.',
          description:
              'Una vez que los personajes 3D están listos, es hora de colocarlos en sus respectivas escenas y animar sus movimientos con el software de animación 3D. Las primeras etapas del proceso de animación son muy toscas; los movimientos y las transiciones son bruscas y poco naturales.\n\nEste primer borrador tan tosco se consigue porque los animadores crean primero las poses iniciales y finales de cualquier movimiento. Estas poses se conocen como fotogramas claves. La iluminación, el trabajo de cámara (la elección de los ángulos y la profundidad de una toma), los efectos y otros detalles se añaden mucho más tarde para producir la animación final y suave que vemos en nuestras pantallas.',
          image:
              'https://cdn.animum3d.com/wp-content/uploads/2020/08/30103039/up-produccion-3d.jpg',
        ),
        Proposito2(
          institution: 'Renderizado',
          description:
              'La última parte del proceso de producción de la animación es la renderización. Es el momento en que la animación finaliza y se exporta. Este paso requiere una gran atención al detalle para garantizar que el renderizado final esté bien pulido.\n\nAquí termina el proceso principal de producción, seguido de la postproducción, donde se añaden los efectos especiales, la música, la voz en off y los efectos sonoros y se sincronizan con toda la animación.',
          image:
              'https://helpx.adobe.com/content/dam/help/images/Stager-Render3DScenes-RealtimeRendering.gif',
        ),
      ],
    );
  }
}

class Procesos extends StatelessWidget {
  final String institution;
  final String description;

  const Procesos({
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
            child: Image.network(
              image,
              width: 500,
              height: 200,
              loadingBuilder: (BuildContext context, Widget child,
                  ImageChunkEvent? loadingProgress) {
                if (loadingProgress == null) {
                  return child;
                } else {
                  return const CircularProgressIndicator();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
