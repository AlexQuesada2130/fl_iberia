import 'package:flutter/material.dart';

class CulturalCard extends StatelessWidget {
  final String title;
  final String activities;
  final String imageUrl;

  const CulturalCard({
    required this.title,
    required this.activities,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    // Usamos Container con altura fija o AspectRatio si queremos cuadrados perfectos
    return Container(
      height: 180, // Altura estándar de las tarjetas
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
          fit: BoxFit.cover, // La imagen llena el contenedor sin deformarse
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Alinea textos a la izquierda
          children: [
            // Etiqueta del Título (Azul)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 58, 105),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
            const SizedBox(height: 4),
            // Etiqueta de Actividades (Blanca)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                activities,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
