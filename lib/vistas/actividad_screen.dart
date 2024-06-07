import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class ActividadScreen extends StatelessWidget {
  const ActividadScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: const Text('Actividad'),
      ),
      body: ListView(children: const [
        Center(
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Responde las siguientes preguntas',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white),
            ),
          ),
        ),
        Actividad()
      ]),
    );
  }
}

class Actividad extends StatefulWidget {
  const Actividad({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ActividadState createState() => _ActividadState();
}

class _ActividadState extends State<Actividad> {
  final GlobalKey<FormBuilderState> _quizKey = GlobalKey<FormBuilderState>();
  bool quizChecked = false;
  int respuestasCorrectas = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: FormBuilder(
        key: _quizKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              color: const Color.fromARGB(255, 155, 225, 236),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FormBuilderRadioGroup(
                  decoration: const InputDecoration(
                    labelText:
                        '¿En qué película apareció la primera animación 3D del cine?',
                  ),
                  name: 'Pregunta 1',
                  options: [
                    'Future World',
                    'Jurassic Park',
                    'Toy Story',
                    'Frozen'
                  ]
                      .map((option) => FormBuilderFieldOption(value: option))
                      .toList(),
                ),
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 155, 225, 236),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FormBuilderRadioGroup(
                  decoration: const InputDecoration(
                    labelText: '¿Cuál NO es un principio de la animación?',
                  ),
                  name: 'Pregunta 2',
                  options: [
                    'Arcos',
                    'Acción secundaria',
                    'Exageración',
                    'Interpolación'
                  ]
                      .map((option) => FormBuilderFieldOption(value: option))
                      .toList(),
                ),
              ),
            ),
            Card(
              color: const Color.fromARGB(255, 155, 225, 236),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: FormBuilderRadioGroup(
                  decoration: const InputDecoration(
                    labelText:
                        'Programa de animación gratuito y de código abierto:',
                  ),
                  name: 'Pregunta 3',
                  options: ['Autodesk Maya', 'Blender', 'Cinema 4D', 'Sketch']
                      .map((option) => FormBuilderFieldOption(value: option))
                      .toList(),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                if (_quizKey.currentState!.saveAndValidate()) {
                  respuestasCorrectas = 0;
                  Map<String, dynamic> formData = _quizKey.currentState!.value;

                  Map<String, dynamic> respuestas = {
                    'Pregunta 1': 'Future World',
                    'Pregunta 2': 'Interpolación',
                    'Pregunta 3': 'Blender',
                  };
                  formData.forEach((question, answer) {
                    if (answer == respuestas[question]) {
                      respuestasCorrectas++;
                    }
                  });
                  _mostrarDialogo(context);

                  setState(() {
                    quizChecked = true;
                  });
                }
              },
              child: const Text('Revisar'),
            ),
          ],
        ),
      ),
    );
  }

  void _mostrarDialogo(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Calificación'),
          content: Text(
              'Tuviste : $respuestasCorrectas / ${_quizKey.currentState!.fields.length} respuesta/s correctas'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }
}
