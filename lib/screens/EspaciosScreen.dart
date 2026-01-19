import 'package:fl_pruebaexamen/widgets/widgets.dart';
import 'package:flutter/material.dart';

class EspaciosScreen extends StatelessWidget {
  const EspaciosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 242, 242, 242),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: Image.network(
          "https://1000logos.net/wp-content/uploads/2021/04/Iberia-logo.png", // Logo Iberia
          height: 100,
          fit: BoxFit.contain,
        ),
        //centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Espacios culturales que no te puedes perder',
              style: TextStyle(
                color: Color.fromARGB(255, 1, 58, 105), // Azul oscuro
                fontSize: 28, // Ajustado para que no sea excesivo
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),

            // FILA 1: Parque Güell y Louvre
            Row(
              children: const [
                Expanded(
                  child: CulturalCard(
                    title: '1. Parque Güell',
                    activities: '98 actividades',
                    imageUrl:
                        'https://aerobusbarcelona.es/wp-content/uploads/2021/07/Blog_Parc-Guell.jpg',
                  ),
                ),
                SizedBox(width: 15), // Separación entre tarjetas
                Expanded(
                  child: CulturalCard(
                    title: '2. Museo del Louvre',
                    activities: '497 actividades',
                    imageUrl:
                        'https://files-101tv-londres.s3-accelerate.amazonaws.com/2025/10/museo-louvre.jpg',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15), // Separación vertical
            // FILA 2: Torre de Londres y Rijksmuseum
            Row(
              children: const [
                Expanded(
                  child: CulturalCard(
                    title: '3. Torre de Londres',
                    activities: '298 actividades',
                    imageUrl:
                        'https://img.3cat.cat/multimedia/jpg/2/3/1765034087932_670.jpg',
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  child: CulturalCard(
                    title: '4. Rijksmuseum',
                    activities: '99 actividades',
                    imageUrl:
                        'https://amsterdamguias.com/wp-content/uploads/elementor/thumbs/Amsterdam_guias__tours-03500-qpcywz5j7uokidq3ctdc8dvi8zmz2ocmvuqzasupsw.jpg',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            // FILA 3: Palacio Ducal (Ancho completo)
            const SizedBox(
              width: double.infinity, // Ocupa todo el ancho
              height:
                  200, // Forzamos altura para que se vea bien la foto grande
              child: CulturalCard(
                title: '5. Palacio Ducal, Venecia',
                activities: '227 actividades',
                imageUrl:
                    'https://cdn-imgix.headout.com/media/images/8af635e27651f52ae68e5fa5a6c6fea3-Doge%20Palace.jpg',
              ),
            ),
            const SizedBox(height: 30), // Espacio final
          ],
        ),
      ),
    );
  }
}
