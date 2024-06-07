import 'package:parcial_final_app/men%C3%BA/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learning3D'),
      ),
      body: const _HomeView2(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.push('/creditos');
          },
          tooltip: 'Créditos',
          backgroundColor: Colors.purple,
          child: const Icon(Icons.people)),
    );
  }
}


class _HomeView2 extends StatelessWidget {
  const _HomeView2();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final menuItem = appMenuItems[index];
        // return Text(menuItem.titulo);
        return _CustomGridView(menuItem: menuItem);
      },
    );
  }
}

class _CustomGridView extends StatelessWidget {
  const _CustomGridView({
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 126, 126, 126).withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      margin: const EdgeInsets.all(1),
      child: InkWell(
        onTap: () {
          context.push(menuItem.link);
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                menuItem.icono,
                size: 64,
                color: colors.primary,
              ),
              const SizedBox(height: 16),
              Text(
                menuItem.titulo,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              Text(
                menuItem.subtitulo,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
