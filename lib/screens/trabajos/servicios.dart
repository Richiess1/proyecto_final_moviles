import 'package:flutter/material.dart';
import '../home/nav_bar.dart';

class MyServicesPage extends StatelessWidget {
  const MyServicesPage({super.key});
  static const String name = 'MyServicesPage';

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: Text(
          "Mis Trabajos",
          style: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w700),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Campo de búsqueda
              TextField(
                decoration: InputDecoration(
                  hintText: "Buscar trabajos",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: const Color(0xFFF1F3F5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 12),
                ),
              ),
              const SizedBox(height: 12),

              // Filtros (no funcionales)
              Row(
                children: [
                  _FilterChip(label: "Todos", selected: true),
                  const SizedBox(width: 8),
                  _FilterChip(label: "Pendientes"),
                  const SizedBox(width: 8),
                  _FilterChip(label: "Completados"),
                ],
              ),
              const SizedBox(height: 24),

              // Próximos
              Text(
                "Próximos",
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 12),
              const _JobTile(
                client: "Sofía Ramírez",
                date: "15 de julio, 10:00 AM",
                service: "Reparación de tuberías",
              ),
              const _JobTile(
                client: "Carlos López",
                date: "20 de julio, 2:00 PM",
                service: "Instalación de lámparas",
              ),

              const SizedBox(height: 24),

              // Completados
              Text(
                "Completados",
                style: textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(height: 12),
              const _JobTile(
                client: "Ana García",
                date: "1 de julio",
                service: "Reparación de muebles",
                actionText: "Calificar",
              ),
              const _JobTile(
                client: "Juan Pérez",
                date: "5 de julio",
                service: "Pintura de interiores",
                actionText: "Ver Pago",
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavBar(currentIndex: 2),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool selected;
  const _FilterChip({required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      selected: selected,
      onSelected: (_) {},
    );
  }
}

class _JobTile extends StatelessWidget {
  final String client;
  final String date;
  final String service;
  final String? actionText;

  const _JobTile({
    required this.client,
    required this.date,
    required this.service,
    this.actionText,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.work_outline),
      title: Text("Cliente: $client"),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(date),
          Text(service, style: const TextStyle(color: Colors.black54)),
        ],
      ),
      trailing: actionText != null
          ? TextButton(onPressed: () {}, child: Text(actionText!))
          : null,
    );
  }
}
