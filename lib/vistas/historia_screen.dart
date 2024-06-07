import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo(
      'Origen De La Animación 3D',
      'A lo largo del final de la década de los sesenta y de la década de los setenta del siglo pasado, los científicos de la informática trabajaron sobre cómo animar proyectos más grandes en 3D. Los diseñadores Edwin Catmull (que luego cofundaría Pixar) y Frederic Parke fueron algunos de los primeros en crear manos y caras humanas realistas a partir de manipulaciones digitales tipo wireframe. Sus técnicas se usaron en el cine por primera vez en la película “Future World”, de 1976. ',
      'assets/future-world.jpg'),
  SlideInfo(
      'Decada de los 90',
      'El software continuó perfeccionándose durante la década de los ochenta del siglo pasado y la animación 3D se convirtió en el medio favorito de principios de la década de los noventa del siglo pasado. Veggie Tales fue la primera serie totalmente animada en 3D de los Estados Unidos en 1993 y dos éxitos de taquilla de Hollywood como “Terminator 2” (1991) y “Parque Jurásico” (1993) adoptaron el estilo ampliamente.',
      'assets/Terminator.jpg'),
  SlideInfo(
      '1995',
      'En 1995, la animación 3D aceptó su mayor desafío hasta ese momento: un largometraje completo. Ese año, Pixar lanzó “Toy Story”, y se le atribuyó el título de la primera película realizada completamente con animación por computadora.',
      'assets/Toy_story.jpg'),
  SlideInfo(
      'Animación 3D En La Historia Reciente',
      'Desde de la década de los noventa del siglo XX, los métodos de animación CGI y 3D han seguido evolucionando y han sido la forma por excelencia para crear efectos especiales en casi toda película o programa de televisión que existe hoy en día. Películas como “Avatar” (2009) y las nuevas remake de “acción en vivo” de las clásicas películas 2D ahora se basan en gran medida en la combinación de la animación 3D con actores de carne y hueso. ',
      'assets/rey-leon.jpg'),
  SlideInfo(
      'Fotorrealismo',
      'Hace poco tiempo nos adentramos en la era del fotorrealismo y de la animación 4D, en la que los gráficos tienen una definición tan clara que, a menudo, resulta difícil distinguir si se generaron por computadora o en la vida real.',
      'assets/tlou.jpg'),
];

class HistoriaScreen extends StatefulWidget {
  static const name = 'historia_screen';

  const HistoriaScreen({super.key});

  @override
  State<HistoriaScreen> createState() => _HistoriaScreenState();
}

class _HistoriaScreenState extends State<HistoriaScreen> {
  final PageController pageviewController = PageController();
  bool endReached = false;

  @override
  void initState() {
    super.initState();

    pageviewController.addListener(() {
      final page = pageviewController.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    pageviewController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: pageviewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl))
                .toList(),
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                child: const Text('Volver'),
                onPressed: () => context.go('/'),
              )),
          endReached
              ? Positioned(
                  bottom: 30,
                  right: 30,
                  child: FadeInRight(
                    from: 15,
                    delay: const Duration(seconds: 1),
                    child: FilledButton(
                      onPressed: () => context.go('/'),
                      child: const Text('Comenzar'),
                    ),
                  ))
              : const SizedBox(),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(height: 10),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
