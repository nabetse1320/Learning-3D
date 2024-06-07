import '../vistas/screen.dart';

class DiferenciasScreen extends StatelessWidget {
  const DiferenciasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Diferencia animación 2D y 3D'),
        ),
        body: const AnimationDemo());
  }
}

class AnimationDemo extends StatelessWidget {
  const AnimationDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [TarjetaDeDiferencia(), TarjetaDeDiferencia2()],
    );
  }
}

class TarjetaDeDiferencia extends StatelessWidget {
  const TarjetaDeDiferencia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
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
        // ignore: prefer_const_constructors
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      '2D',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                        'La animación 2D es plana, ya que se basa en un plano bidimensional con los ejes x e y.',
                        textAlign: TextAlign.justify),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Image(
                      image: AssetImage('assets/2d.jpg'),
                      width: 150,
                      height: 130,
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 180),
                child: Icon(Icons.compare_arrows),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text('3D',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'Mientras que con la ayuda de un eje adicional, el 3D añade una percepción de profundidad a las animaciones.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Image(
                      image: AssetImage('assets/3d.jpg'),
                      width: 150,
                      height: 130,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}

class TarjetaDeDiferencia2 extends StatelessWidget {
  const TarjetaDeDiferencia2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
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
        // ignore: prefer_const_constructors
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text(
                      '2D',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                        'La animación 2D consigue el movimiento mediante la rápida sucesión de escenas en 2D.',
                        textAlign: TextAlign.justify),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Image(
                      image: AssetImage('assets/secuencia2D.jpg'),
                      width: 150,
                      height: 100,
                    ),
                  )
                ],
              ),
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 150),
                child: Icon(Icons.compare_arrows),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: Text('3D',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text(
                      'La animación en 3D se realiza creando modelos en 3D y manejandolos en un entorno tridimensional.',
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Image(
                      image: AssetImage('assets/modelado-3d.jpg'),
                      width: 150,
                      height: 100,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
