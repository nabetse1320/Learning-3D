import '../vistas/screen.dart';

class PrincipiosScreen extends StatelessWidget {
  const PrincipiosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Principios de animación'),
        ),
        body: _PrincipiosWidget());
  }
}

class _PrincipiosWidget extends StatelessWidget {
  final Map<String, Map<String, String>> items = {
    'Principio 1: Estirar y encoger': {
      'description':
          'El principio de estirar y encoger es el primer postulado con el que se busca crear la ilusión de características físicas, como masa y volumen, en personajes u objetos en movimiento, que se consigue comprimiendo o estirando los mismos.',
      'gifUrl':
          'https://i0.wp.com/www.tesseractspace.com/blog/wp-content/uploads/2019/04/1_Squash-and-stretch.gif?w=480&ssl=1%C2%A0'
    },
    'Principio 2: Anticipación': {
      'description':
          'Gracias a este principio puedes decirle a la audiencia que una acción va a suceder en un lugar y en un momento específicos. Es la preparación para la acción o movimiento principal, que puede verse de diferentes maneras. Por ejemplo, ¿podrías imaginar el lanzamiento de una bola de baseball sin pensar en estirar tu brazo hacia atrás?',
      'gifUrl':
          'https://i0.wp.com/www.tesseractspace.com/blog/wp-content/uploads/2019/04/2_Anticipation.gif?w=640&ssl=1%C2%A0'
    },
    'Principio 3: Puesta en escena': {
      'description':
          'Este principio se basa en el concepto de “Puesta en escena” propuestos por el cine y la televisión, en el que se subraya la importancia de dirigir la atención de la audiencia sobre los elementos más importantes en la escena. Este concepto pude ser ignorado o subestimado, pero puede potenciar nuestro relato cuando se usa adecuadamente.\n\nAlgunos de los elementos que se tienen en cuenta en la puesta en escena son el encuadre, la posición del personaje en cuadro, la luz y la sombra, como sus acciones. Es importante siempre trazar una guía de movimiento para dirigir la mirada de la audiencia sobre los elementos vitales sin que pierda su atención.\n\nAlgo que no se recomienda en la puesta en escena es desarrollar muchas situaciones simultáneas en la misma escena. El fondo y la animación deberían funcionar en conjunto como una unidad pictórica en la escena.',
      'gifUrl':
          'https://i0.wp.com/www.tesseractspace.com/blog/wp-content/uploads/2019/04/3_Staging.gif?w=640&ssl=1%C2%A0'
    },
    'Principio 4: Animación directa': {
      'description':
          'Hay dos maneras de enfrentar la animación con dibujos: animación directa o pose a pose. Cada una tiene sus beneficios y los dos acercamientos se combinan usualmente. La animación directa implica dibujo cuadro a cuadro desde el inicio hasta el final. Si lo que se busca es fluidez, movimientos realistas, la animación directa es la mejor opción.\n\nCon la técnica pose a pose, puedes dibujar el cuadro inicial, el cuadro final y algunos fotogramas claves en medio. Luego, regresas al inicio y completas los fotogramas restantes. Esta técnica te da un poco más control de la escena y te permite aumentar el efecto dramático del movimiento.',
      'gifUrl':
          'https://i2.wp.com/www.tesseractspace.com/blog/wp-content/uploads/2019/04/4_Pose-to-Pose.gif?w=480&ssl=1%C2%A0'
    },
    'Principio 5: Acciones complementarias': {
      'description':
          'Cuando un personaje u objeto tiende a detenerse, no todo lo que está asociado a él se detiene.\n\nHabrás visto en muchas animaciones como el cabello de un personaje que corre y se detiene, sigue en movimiento después de esta acción. Aquí, los elementos secundarios están siguiendo a la acción principal. Esto ayuda a dar un look mucho más realista a la animación.',
      'gifUrl':
          'https://i0.wp.com/www.tesseractspace.com/blog/wp-content/uploads/2019/04/5_Follow-Through-and-Overlapping.gif?w=640&ssl=1%C2%A0'
    },
    'Principio 6: Acelerar y desacelerar': {
      'description':
          'Este principio parte de la idea que ningún objeto pasa del reposo absoluto al movimiento continuo instantáneamente, todos los objetos necesitan un breve lapso de aceleración o desaceleración.\n\nEn ese sentido, el inicio y final de una acción son detallados con más cuadros para dar la sensación de arranque o frenado de manera más natural.',
      'gifUrl':
          'https://i0.wp.com/www.tesseractspace.com/blog/wp-content/uploads/2019/04/6_Slow-In-Slow-Out.gif?w=640&ssl=1%C2%A0'
    },
    'Principio 7: Arcos': {
      'description':
          'Casi todos los objetos, incluidos los humanos, se mueven en trayectorias circulares más que en línea recta. Este principio se construye sobre esa noción. Cuando una cabeza se mueve o un brazo se aleja, tiene un movimiento en arco adherido. La velocidad del arco es importante también, a veces imperceptible pero a veces fácilmente reconocible.\n\nLos arcos operan a lo largo de una trayectoria curva que agrega la ilusión de vida a un objeto animado en acción. Sin arcos, las animaciones se sienten rígidas y mecánicas.',
      'gifUrl':
          'https://i0.wp.com/www.tesseractspace.com/blog/wp-content/uploads/2019/04/7_Arcs.gif?w=480&ssl=1%C2%A0'
    },
    'Principio 8: Acción secundaria': {
      'description':
          'Todos los gestos que son agregados a la acción principal o primaria son llamados acciones secundarias. Estas acciones agregan personalidad y dan una dimensión mucho más profunda del personaje dándonos más pistas acerca de quién es, qué piensa o qué hace.\n\nTambién son acciones que sirven para subrayar la acción principal y que se agregan generalmente al principio o final de un movimiento.',
      'gifUrl':
          'https://i1.wp.com/www.tesseractspace.com/blog/wp-content/uploads/2019/04/8_Secondary-Action.gif?w=640&ssl=1%C2%A0'
    },
    'Principio 9: Cadencia (Timing)': {
      'description':
          'Volvamos a darle un ojo a las leyes físicas para este principio. Cada movimiento puede ser dividido en múltiples fracciones de tiempo, en este caso, cuadros, donde la cadencia está dada en el tiempo de llegada o fracciones de tiempo para completar la acción. Este concepto es muy importante pues incluso un par de milisegundos de más o de menos pueden echar a perder el movimiento.\n\nEste principio puede ayudar a controlar reacciones y estados de ánimo de los personajes.',
      'gifUrl':
          'https://i0.wp.com/www.tesseractspace.com/blog/wp-content/uploads/2019/04/9_Timing.gif?w=640&ssl=1%C2%A0'
    },
    'Principio 10: Exageración': {
      'description':
          'Demasiado realismo puede arruinarlo todo. Exagerar un poco, agregar elementos surreales e inesperados a la escena pueden darle un estilo único a la animación. La exageración presenta las características y acciones de un objeto de una manera extrema para obtener un efecto cómico o dramático.\n\nAdemás, la exageración es un gran recurso para hacer mucho más atractivo un personaje y puede mejorar la narrativa de la pieza.',
      'gifUrl':
          'https://i0.wp.com/www.tesseractspace.com/blog/wp-content/uploads/2019/04/10_Exaggeration.gif?w=640&ssl=1%C2%A0'
    },
    'Principio 11: Dibujo sólido': {
      'description':
          'Este principio invita a la representación tridimensional de elementos en la escena, a dar la ilusión de profundidad y peso a pesar de tener solo dos dimensiones como medio.\n\nPara conseguir con éxito este efecto es necesario entender y aplicar conceptos como el de perspectiva, volumen, peso, equilibrio e iluminación a nuestro personaje y el escenario que lo rodea.',
      'gifUrl':
          'https://i2.wp.com/www.tesseractspace.com/blog/wp-content/uploads/2019/04/11_Solid-Drawings.gif?w=640&ssl=1%C2%A0'
    },
    'Principio 12: Atractivo': {
      'description':
          'El último, pero no menos importante de todos los principios es el atractivo. La audiencia tiende a recordar a los personajes que perciben únicos y reales.\n\nEs un principio que busca que las animaciones tengan imágenes mucho más creativas e interesantes para la audiencia. El atractivo puede ser un valor difícil de cuantificar por su\n\ncondición subjetiva, pero hay algunas nociones que nos permiten llegar a ciertos rasgos sobresalientes.',
      'gifUrl':
          'https://i1.wp.com/www.tesseractspace.com/blog/wp-content/uploads/2019/04/12_Appeal.gif?w=640&ssl=1%C2%A0'
    },
  };

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        var key = items.keys.elementAt(index);
        var value = items[key];
        return Principios(
          title: key,
          description: value!['description']!,
          gifUrl: value['gifUrl']!,
        );
      },
    );
  }
}

class Principios extends StatelessWidget {
  final String title;
  final String description;
  final String gifUrl;

  const Principios({
    super.key,
    required this.title,
    required this.description,
    required this.gifUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Row(
        children: [
          const Icon(Icons.star),
          const SizedBox(width: 10),
          Text(title),
        ],
      ),
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(description),
              const SizedBox(height: 10),
              Image.network(
                gifUrl,
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
            ],
          ),
        ),
      ],
    );
  }
}
