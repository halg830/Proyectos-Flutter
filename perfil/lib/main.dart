import 'dart:ffi';

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
        );

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
                  const Text("Nombre:", style: textInfo),
                  const Text("Fino señores", style: textInfo),
                  const SizedBox(height: 15.0),

                  const Text(
                    "Email:",
                    style: textInfo,
                  ),
                  const Text("fino@gmail.com", style: textInfo),
                  const SizedBox(height: 15.0),

                  const Text(
                    "Localización:",
                    style: textInfo,
                  ),
                  const Text(
                    "New York, USA",
                    style: textInfo,
                  ),
                  const SizedBox(height: 15.0),

                  const Text(
                    "Lenguajes:",
                    style: textInfo,
                  ),
                  const Text(
                    "Fino, español",
                    style: textInfo,
                  ),
                  const SizedBox(height: 15.0),

                  const Text("Ocupación:", style: textInfo),
                  const Text(
                    "Ser fino",
                    style: textInfo,
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    width: 370,
                    height: 2,
                    margin: const EdgeInsets.only(top: 10, bottom: 10),
                    decoration: const BoxDecoration(color: Colors.black26),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    "Mi familia:",
                    style: textInfo,
                  ),
                  const SizedBox(height: 15.0),
                  Row(
                    children: [
                      Text(
                        "abc",
                        style: textInfo,
                      ),
                      Text(
                        " - abc",
                        style: textInfo,
                      ),
                      SizedBox(width: 200.0),
                      Text(
                        "abc",
                        style: textInfo,
                      ),
                      Text(
                        " - abc",
                        style: textInfo,
                      ),
                    ],
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      Text(
                        "abc",
                        style: textInfo,
                      ),
                      Text(
                        " - abc",
                        style: textInfo,
                      )
                    ],
                  ),
                  
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
                  color: Color.fromARGB(255, 217, 81, 103),
                ),
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
                    SizedBox(height: 15.0),
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
