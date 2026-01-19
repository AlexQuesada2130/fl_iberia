import 'package:fl_pruebaexamen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Registerscreen extends StatefulWidget {
  const Registerscreen({Key? key}) : super(key: key);

  @override
  State<Registerscreen> createState() => _RegisterscreenState();
}

class _RegisterscreenState extends State<Registerscreen> {
  final myFormKey = GlobalKey<FormState>();

  final Map<String, String> formValues = {
    'nombre': '',
    'apellido': '',
    'apellido2': '', //Para hacer que sea opcional
    'email': '',
    'password': '',
    'role': '',
  };

  bool _switchValue = false;
  bool _switchValue2 = false;
  bool _switchValue3 = false;
  bool _switchValue4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: Image.network(
          "https://1000logos.net/wp-content/uploads/2021/04/Iberia-logo.png",
          height: 100,
          fit: BoxFit.contain,
        ),

        actions: [],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Form(
          key: myFormKey,
          child: Column(
            children: [
              CustomTextFormFile(
                hintText: 'Correo electrónico',
                keyboardType: TextInputType.emailAddress,
                formProperty: 'email',
                formValues: formValues,
                validator: (value) {
                  if (value == null || value.isEmpty)
                    return 'El correo es obligatorio';
                  if (!value.contains('@')) return 'Debe contener @';
                  return null;
                },
              ),
              const SizedBox(height: 10),
              CustomTextFormFile(
                hintText: 'Contraseña',
                labelText: 'Contraseña',
                keyboardType: TextInputType.emailAddress,
                suffixIcon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.red,
                ),
                obscureText: true,
                formProperty: 'password',
                formValues: formValues,
                validator: (value) {
                  return (value != null && value.length >= 6)
                      ? null
                      : 'Mínimo 6 caracteres';
                },
              ),
              const SizedBox(height: 10),
              CustomTextFormFile(
                labelText: 'Nombre',
                formProperty: 'nombre',
                formValues: formValues,
                validator: (value) {
                  return (value != null && value.length >= 6)
                      ? null
                      : 'Mínimo 6 caracteres';
                },
              ),
              const SizedBox(height: 10),
              CustomTextFormFile(
                hintText: 'Apellidos',
                labelText: 'Primer apellido',
                formProperty: 'apellido',
                formValues: formValues,
                validator: (value) {
                  return (value != null && value.length >= 6)
                      ? null
                      : 'Mínimo 6 caracteres';
                },
              ),
              const SizedBox(height: 10),
              CustomTextFormFile(
                hintText: 'Apellidos',
                labelText: 'Segundo apellido (opcional)',
                formProperty: 'apellido2',
                formValues: formValues,
              ),
              const SizedBox(height: 20),
              SwitchListTile.adaptive(
                title: Text(
                  "Tengo más de 18 años",
                  style: TextStyle(fontSize: 14),
                ),
                value: _switchValue,
                activeThumbColor: const Color.fromARGB(255, 255, 0, 0),
                onChanged: (value) {
                  setState(() {
                    _switchValue = value;
                  });
                },
              ),
              const SizedBox(height: 15),
              const Divider(),
              SwitchListTile.adaptive(
                title: const Text(
                  'Al registrarme, acepto los Términos y condiciones del Programa Iberia Club y la Política de Privacidad',
                  style: TextStyle(fontSize: 14),
                ),
                value: _switchValue2,
                activeThumbColor: const Color.fromARGB(255, 255, 0, 0),
                onChanged: (value) {
                  setState(() {
                    _switchValue2 = value;
                  });
                },
              ),
              const Divider(),
              SwitchListTile.adaptive(
                title: const Text(
                  'Consiento que Iberia utilice mis datos para remitirme comunicaciones diseñadas y pensadas solo para mí, de promociones de productos y/o servicios de Iberia y de los partners del programa Iberia Club, y de otras sociedades del grupo IAG.',
                  style: TextStyle(fontSize: 12),
                ),
                value: _switchValue3,
                activeThumbColor: const Color.fromARGB(255, 255, 0, 0),
                onChanged: (value) {
                  setState(() {
                    _switchValue3 = value;
                  });
                },
              ),
              const SizedBox(height: 15),
              const Divider(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    // a) Ocultar teclado
                    FocusScope.of(context).unfocus();

                    // b) Validar que los switches obligatorios estén marcados
                    if (!_switchValue || !_switchValue2) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text(
                            'Debes aceptar los términos y confirmar tu edad',
                          ),
                        ),
                      );
                      return;
                    }
                    // c) Validar el formulario (Inputs de texto)
                    if (!myFormKey.currentState!.validate()) {
                      print('Formulario no válido');
                      return;
                    }
                    // d) Guardar el estado del formulario en el mapa formValues
                    myFormKey.currentState!.save();
                    // e) IMPRIMIR EN CONSOLA
                    print('--- Nuevo Registro ---');
                    print(formValues);
                    print(
                      'Switches: Edad: $_switchValue, Términos: $_switchValue2, Publi: $_switchValue3',
                    );
                    // f) NAVEGAR AL HOMESCREEN
                    // Opción A: Si tienes rutas definidas:
                    Navigator.pushReplacementNamed(context, 'home');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 166, 3, 3),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                    disabledBackgroundColor: const Color.fromARGB(
                      //Boton dehabilitado sin style
                      255,
                      166,
                      3,
                      3,
                    ),
                  ),
                  child: const Text(
                    'Regístrate en Iberia Club',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
