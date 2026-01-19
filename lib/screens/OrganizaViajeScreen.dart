import 'package:fl_pruebaexamen/appTheme/appTheme.dart';
import 'package:flutter/material.dart';
import 'package:fl_pruebaexamen/widgets/widgets.dart';

class Organizaviajescreen extends StatefulWidget {
  const Organizaviajescreen({super.key});

  @override
  State<Organizaviajescreen> createState() => _OrganizaviajescreenState();
}

class _OrganizaviajescreenState extends State<Organizaviajescreen> {
  final List<Map<String, dynamic>> menuItems = [
    {
      'icon': Icons.newspaper,
      'title': 'Prensa Digital',
      'subtitle': 'Tus periódicos y revistas favoritas',
      'color': Colors.green,
    },
    {
      'icon': Icons.chat_bubble,
      'title': 'iBot',
      'subtitle': 'Tu asistente virtual ¿en qué puedo ayudarte?',
      'color': const Color.fromARGB(255, 255, 0, 0),
    },
    {
      'icon': Icons.airline_seat_individual_suite_rounded,
      'title': 'Hoteles',
      'subtitle': 'Encuentra la mejor opción y descansa',
      'color': const Color.fromARGB(255, 255, 0, 0),
    },
    {
      'icon': Icons.directions_car_filled,
      'title': 'Coches',
      'subtitle': 'Desplázate con total libertad',
      'color': const Color.fromARGB(255, 255, 0, 0),
    },
    {
      'icon': Icons.confirmation_num_outlined,
      'title': 'Tarjetas de embarque',
      'subtitle': 'Todas tus tarjetas en un solo lugar',
      'color': const Color.fromARGB(255, 255, 0, 0),
    },
    {
      'icon': Icons.shopping_bag,
      'title': 'BoB',
      'subtitle': 'Recogida de equipaje a domicilio',
      'color': const Color.fromARGB(255, 255, 0, 0),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Apptheme.backgroundScreens,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Image.network(
          "https://1000logos.net/wp-content/uploads/2021/04/Iberia-logo.png",
          height: 100,
          fit: BoxFit.contain,
        ),

        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 15, //horizontal
          mainAxisSpacing: 15, //vertical
          children: menuItems.map((item) {
            return MenuCard(
              icon: item['icon'],
              title: item['title'],
              subtitle: item['subtitle'],
              iconColor: item['color'],
            );
          }).toList(),
        ),
      ),
    );
  }
}
