import 'package:flutter/material.dart';

class MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color iconColor;

  const MenuCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          4,
        ), // Bordes ligeramente redondeados
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centrado vertical
          children: [
            Icon(icon, size: 30, color: iconColor), // El icono
            const SizedBox(height: 10), // Separación
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400, // Letra normal tirando a fina
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 8), // Separación
            Text(
              subtitle,
              textAlign: TextAlign.center,
              maxLines: 3, // Máximo 3 líneas de texto
              overflow:
                  TextOverflow.ellipsis, // Si se pasa, pone puntos suspensivos
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[500], // Color gris para el subtítulo
                height: 1.2, // Altura de línea para que se lea mejor
              ),
            ),
          ],
        ),
      ),
    );
  }
}
