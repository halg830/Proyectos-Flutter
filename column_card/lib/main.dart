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
        appBar: AppBar(title: const Text('Simple Card design'), backgroundColor: Colors.black87, centerTitle: true),
        body: const CardExample(),
      ),
    );
  }
}

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    const styleText = TextStyle(color: Colors.white, fontSize: 15);
    const styleTitles = TextStyle(color: Colors.white);
    const paddingCard = EdgeInsets.all(10);

    return Stack(
      children: [
        Container(color: Color.fromARGB(255, 221, 237, 200)),

        Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Padding(
              padding: paddingCard,
              child: Card(              
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                shadowColor: Colors.black87,
                elevation: 10,
                color: Color.fromARGB(255, 254, 172, 64),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.photo_album, size: 70),
                      title: Text('Photo Album', style: styleTitles),
                      subtitle: Text(
                          'TWICE', style: styleTitles),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Edit', style: styleText,),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 25),
                        TextButton(
                          child: const Text('Create', style: styleText,),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 25),
                        TextButton(
                          child: const Text('Delete', style: styleText,),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 25),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: paddingCard,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                shadowColor: Colors.black87,
                elevation: 10,
                color: Color.fromARGB(255, 139, 195, 72),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.access_time, size: 70),
                      title: Text('Time', style: styleTitles),
                      subtitle: Text(
                          'TWICE', style: styleTitles),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Edit', style: styleText,),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 25),
                        TextButton(
                          child: const Text('Create', style: styleText,),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 25),
                        TextButton(
                          child: const Text('Delete', style: styleText,),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 25),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: paddingCard,
              child: Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                shadowColor: Colors.black87,
                elevation: 10,
                color: Color.fromARGB(255, 254, 64, 128),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      leading: Icon(Icons.accessibility, size: 70),
                      title: Text('Access', style: styleTitles),
                      subtitle: Text(
                          'TWICE', style: styleTitles),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('Edit', style: styleText,),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 25),
                        TextButton(
                          child: const Text('Create', style: styleText,),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 25),
                        TextButton(
                          child: const Text('Delete', style: styleText,),
                          onPressed: () {/* ... */},
                        ),
                        const SizedBox(width: 25),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      
      ]
    );
  }
}
