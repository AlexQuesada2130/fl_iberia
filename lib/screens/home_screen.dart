import 'package:fl_pruebaexamen/screens/screens.dart';
import 'package:fl_pruebaexamen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 166, 3, 3),
      body: CustomScrollView(
        slivers: [
          const _CustomAppBar(),
          SliverToBoxAdapter(child: _bodyForm()),
        ],
      ),
    );
  }
}

class _CustomAppBar extends StatelessWidget {
  const _CustomAppBar();
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 250,
      floating: false,
      pinned: true,
      snap: false,
      backgroundColor: const Color.fromARGB(255, 166, 3, 3),
      flexibleSpace: FlexibleSpaceBar(
        background: SafeArea(
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120.0,
                    height: 60.0,
                    child: Image.network(
                      "https://ico.simpleness.org/static/transport-logos/iberia.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Hola, te damos la bienvenida a Iberia',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 15),
                  Text(
                    'INICIAR SESIÓN',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _bodyForm extends StatelessWidget {
  final myFormKey = GlobalKey<FormState>();

  final Map<String, String> formValues = {
    'email': 'tonny@gmail.com',
    'password': '1234',
  };

  _bodyForm();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white, // Fondo blanco del formulario
              borderRadius: BorderRadius.circular(0),
            ),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomTextFormFile(
                    hintText: 'Email o Número Iberia Club',
                    keyboardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormFile(
                    hintText: 'Contraseña',
                    keyboardType: TextInputType.emailAddress,
                    suffixIcon: Icon(
                      Icons.remove_red_eye_outlined,
                      color: const Color.fromARGB(255, 255, 0, 0),
                    ),
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: null,
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
                        'Iniciar sesión',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  TextButton(
                    onPressed: null,
                    child: Text(
                      "¿Has olvidado tu contraseña?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          ListTile(
            trailing: Icon(Icons.arrow_circle_right, color: Colors.white),
            title: Text(
              "Continua como invitado",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ListviewScreen()),
              );
            },
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white, // Fondo blanco del formulario
              borderRadius: BorderRadius.circular(0),
            ),
            child: Column(
              children: [
                Icon(Icons.person, color: const Color.fromARGB(255, 166, 3, 3)),
                Text(
                  "¿Quieres disfrutar de las ventajas de pertenecer a Iberia?",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(width: 5),
                ListTile(
                  trailing: Icon(
                    Icons.keyboard_arrow_right_rounded,
                    color: const Color.fromARGB(255, 255, 0, 0),
                  ),
                  title: Text(
                    textAlign: TextAlign.center,
                    "Regístrate",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Registerscreen()),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
