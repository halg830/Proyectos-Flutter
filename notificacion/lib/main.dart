import 'package:flutter/material.dart';

/// Flutter code sample for [Card].

void main() => runApp(const CardExampleApp());

class CardExampleApp extends StatelessWidget {
  const CardExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Cards app'),
            backgroundColor: Color.fromARGB(255, 25, 147, 247)),
        body: const CardExample(),
      ),
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    const styleText = TextStyle(color: Colors.black87);

    return Stack(children: [
      Container(color: Color.fromARGB(255, 221, 237, 200)),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          shadowColor: Colors.black87,
          elevation: 10,
          child: Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Titulo'),
                  subtitle: Text(
                      'Este es el subtitulo del card. Aquí podemos colocar descripción de este card.'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text(
                        'Aceptar',
                        style: styleText,
                      ),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text(
                        'Cancelar',
                        style: styleText,
                      ),
                      onPressed: () {/* ... */},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}
