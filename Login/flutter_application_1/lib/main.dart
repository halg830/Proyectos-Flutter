import 'package:flutter/material.dart';

/// Flutter code sample for [Form].

void main() => runApp(const FormExampleApp());

class FormExampleApp extends StatelessWidget {
  const FormExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: const FormExample(
          title: '',
        ),
      ),
    );
  }
}

class FormExample extends StatefulWidget {
  const FormExample({super.key, required String title});

  @override
  State<FormExample> createState() => Login();
}

class Login extends State<FormExample> {
  // const Login({super.key, required String title});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    const errorStyle = TextStyle(
        color: Color.fromARGB(255, 255, 88, 76),
        fontSize: 15,
        fontFamily: 'Helvetica',
        decoration: TextDecoration.none,
        height: 2);

    const paddingInput = EdgeInsets.only(top: 10, left: 40.0, right: 40, bottom: 10);

    return Stack(
      children: [
        Container(
          width: 4000,
          height: 4000,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            Color.fromARGB(135, 4, 0, 255),
            Color.fromARGB(255, 180, 68, 255),
          ], transform: GradientRotation(70))),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    color: Color.fromARGB(255, 25, 147, 247),
                    "assets/perfil.png",
                    width: 90,
                    height: 90,
                  )),
            ),
            Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: paddingInput,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        errorStyle: errorStyle,
                        hintText: 'Ingrese su email',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingrese su email';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: paddingInput,
                    child: TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        
                        filled: true,
                        fillColor: Colors.white,
                        errorStyle: errorStyle,
                        hintText: 'Ingrese su contraseña',
                      ),
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor ingrese su contraseña';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Validate will return true if the form is valid, or false if
                        // the form is invalid.
                        if (_formKey.currentState!.validate()) {
                          // Process data.
                        }
                      },
                      child: const Text('Ingresar'),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ],
    );
  }
}
