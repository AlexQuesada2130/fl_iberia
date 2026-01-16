import 'package:fl_pruebaexamen/routes/app_routes.dart';
import 'package:flutter/material.dart';

class ListviewScreen extends StatelessWidget {
  const ListviewScreen({super.key});

  static const source =
      "https://grupo.iberia.com/contents/archives/475/109/images/thumb255x185_auto/iberia_475109762851338_thumb.jpg";

  void displayDialog(BuildContext context) {
    showDialog(
      barrierDismissible: true,
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Colors.white,
          title: Text(
            "Aviso",
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "El sistema de reservas está deshabilitado en estos momentos.",
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              Image.network(source),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text(
                "Aceptar",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 255, 0, 0),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          "Bienvenido/a",
          style: TextStyle(
            color: const Color.fromARGB(255, 255, 0, 0),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.account_circle_outlined, color: Colors.black),
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          // 3. El Widget CARD crea el efecto de bloque blanco
          Card(
            elevation: 5, // La sombra
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10), // Bordes redondeados
            ),
            clipBehavior:
                Clip.antiAlias, // Recorta el contenido para respetar los bordes
            child: Column(
              children: [
                // --- TU PRIMER ITEM (RESERVAS) ---
                ListTile(
                  title: Text(
                    "RESERVAS",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  trailing: Icon(Icons.arrow_forward),
                  leading: Icon(Icons.apartment_sharp),
                  onTap: () => displayDialog(context),
                ),

                // 4. El DIVIDER crea la línea separadora
                Divider(height: 1, thickness: 1, indent: 15, endIndent: 15),

                // --- TUS ITEMS DINÁMICOS ---
                // Usamos un map para generar los items y sus divisores
                ...AppRoutes.secondMenu.map((e) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Icon(e.icon),
                        trailing: Icon(Icons.arrow_forward),
                        title: Text(
                          e.name.toUpperCase(),
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onTap: () => Navigator.pushNamed(context, e.route),
                      ),
                      // Añadimos un divisor después de cada elemento
                      // (Opcional: puedes poner lógica para no ponerlo en el último)
                      Divider(
                        height: 1,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),
                    ],
                  );
                }),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromARGB(255, 222, 222, 222),
    );
  }
}
