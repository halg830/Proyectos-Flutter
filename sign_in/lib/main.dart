import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// Flutter code sample for [TextFormField].

void main() => runApp(const TextFormFieldExampleApp());

class TextFormFieldExampleApp extends StatelessWidget {
  const TextFormFieldExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text('Registro'),
            backgroundColor: const Color.fromARGB(255, 25, 147, 247)),
        body: const TextFormFieldExample(),
      ),
    );
  }
}

class TextFormFieldExample extends StatefulWidget {
  const TextFormFieldExample({super.key});

  @override
  State<TextFormFieldExample> createState() => _TextFormFieldExampleState();
}

class _TextFormFieldExampleState extends State<TextFormFieldExample> {
  final List<String> inputs = [
    "Nombre",
    "Apellidos",
    "Cedula",
    "Teléfono",
    "Usuario",
    "Contraseña"
  ];

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Shortcuts(
          shortcuts: const <ShortcutActivator, Intent>{
            // Pressing space in the field will now move to the next field.
            SingleActivator(LogicalKeyboardKey.space): NextFocusIntent(),
          },
          child: FocusTraversalGroup(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                  key: _formKey,
                  autovalidateMode: AutovalidateMode.always,
                  onChanged: () {
                    Form.of(primaryFocus!.context!).save();
                  },
                  child: Column(children: <Widget>[
                    Wrap(
                        children:
                            List<Widget>.generate(inputs.length, (int index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ConstrainedBox(
                          constraints:
                              BoxConstraints.tight(const Size(180, 50)),
                          child: TextFormField(
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              // errorStyle: errorStyle,
                              hintText: inputs[index],
                            ),
                            onSaved: (String? value) {
                              debugPrint(
                                  'Value for field $index saved as "$value"');
                            },
                            validator: (String? value) {
                              if (value == null || value.isEmpty) {
                                return 'Por favor ingrese su ${inputs[index]}';
                              }
                              return null;
                            },
                          ),
                        ),
                      );
                    })),
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
                        child: const Text('Registrarse'),
                      ),
                    ),
                  ])),
            ),
          ),
        ),
      ),
    );
  }
}
