import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Cuadro(title: 'Flutter Demo Home Page'),
    );
  }
}

class Cuadro extends StatelessWidget {
  const Cuadro({super.key, required String title});

  @override
  Widget build(BuildContext context) {
    const textInfo = TextStyle(
        color: Colors.black87,
        fontSize: 15,
        decoration: TextDecoration.none,
        fontFamily: "monospace",
        height: 2);

    return Stack(
      children: [
        Positioned(
            bottom: 0,
            left: -300,
            child: Transform.rotate(
              angle: 0,
              child: Container(
                width: 2000,
                height: 2000,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            )),
        Positioned(
            top: 220,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Nombre:", style: textInfo),
                  Text("Fino señores", style: textInfo),
                  Text(
                    "Email:",
                    style: textInfo,
                  ),
                  Text("fino@gmail.com", style: textInfo),
                  Text(
                    "Localización:",
                    style: textInfo,
                  ),
                  Text(
                    "New York, USA",
                    style: textInfo,
                  ),
                  Text(
                    "Lenguajes:",
                    style: textInfo,
                  ),
                  Text(
                    "Fino, español",
                    style: textInfo,
                  ),
                  Text("Ocupación:", style: textInfo),
                  Text(
                    "Ser fino",
                    style: textInfo,
                  ),
                  Container(
                    width: 370,
                    height: 2,
                    margin: EdgeInsets.only(top: 10, bottom: 10),
                    decoration: BoxDecoration(color: Colors.black26),
                  ),
                  Text(
                    "Mi familia:",
                    style: textInfo,
                  ),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          "abc",
                          style: textInfo,
                        ),
                      ),
                      Container(
                        child: Text(
                          " - abc",
                          style: textInfo,
                        ),
                      )
                    ]
                  )
                ],
              ),
            )),
        Positioned(
            top: -45,
            left: -300,
            child: Transform.rotate(
              angle: 330,
              child: Container(
                width: 2000,
                height: 300,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.white,
                  Color.fromRGBO(255, 0, 0, 1),
                  // colorBotones,
                  // colorBotones
                ])),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 40.0,
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 20.0,
                ),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          "assets/fino.jpg",
                          width: 80,
                          height: 80,
                        )),
                    const Text(
                      "Fino",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 20,
                        decoration: TextDecoration.none,
                      ),
                    )
                  ],
                ),
              ),
              const Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Cronograma",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 15,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Text(
                                  "8",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    decoration: TextDecoration.none,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Eventos",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 15,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Text(
                                  "15",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    decoration: TextDecoration.none,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Rutina",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 15,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                                Text(
                                  "15",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                    decoration: TextDecoration.none,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Ahorros",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                "8",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              )
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Text(
                                "Meta Julio",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 15,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                              Text(
                                "15",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontSize: 20,
                                  decoration: TextDecoration.none,
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
