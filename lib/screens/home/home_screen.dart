import 'package:flutter/material.dart';
import 'nav_bar.dart' as customNavBar;

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String name = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fixea", style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_none),
            onPressed: () {},
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              "Hola, Sofía",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),

            // Barra de búsqueda
            TextField(
              decoration: InputDecoration(
                hintText: "Buscar servicios",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Próximos servicios
            const Text(
              "Próximos servicios",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            SizedBox(
              height: 180,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _serviceCard("Fontanería", "Mañana, 9:00 AM",
                      "https://cdn-icons-png.flaticon.com/512/3063/3063828.png"),
                  const SizedBox(width: 12),
                  _serviceCard("Electricidad", "Pasado mañana, 2:00 PM",
                      "https://cdn-icons-png.flaticon.com/512/2965/2965278.png"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Ofertas destacadas
            const Text(
              "Ofertas destacadas",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
              child: ListTile(
                leading: const Icon(Icons.local_offer, color: Colors.deepPurple),
                title: const Text("20% de descuento en limpieza"),
                subtitle: const Text("Solo por tiempo limitado"),
                trailing: Image.network(
                  "https://cdn-icons-png.flaticon.com/512/3090/3090591.png",
                  width: 50,
                ),
              ),
            ),
          ],
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: customNavBar.NavBar(currentIndex: 0),
    );
  }

  Widget _serviceCard(String title, String subtitle, String imageUrl) {
    return SizedBox(
      width: 150,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius:
                    const BorderRadius.vertical(top: Radius.circular(16)),
                child: Image.network(imageUrl, fit: BoxFit.cover, width: double.infinity),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(title,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(subtitle, style: TextStyle(color: Colors.grey.shade600)),
            ),
          ],
        ),
      ),
    );
  }
}


