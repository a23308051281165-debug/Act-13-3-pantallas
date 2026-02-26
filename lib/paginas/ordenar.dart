import 'package:flutter/material.dart';

class Ordenar extends StatelessWidget {
  const Ordenar({super.key});

  final List<Map<String, String>> products = const [
    {'nombre': 'Helado de fresa', 'imagen': 'https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/helado-de-fresa.jpg'},
    {'nombre': 'Helado de chocolate', 'imagen': 'https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/20210330080108helado-de-chocolate.jpg'},
    {'nombre': 'Helado de vainilla', 'imagen': 'https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/helado-de-vainilla.webp'},
    {'nombre': 'Helado de chicle', 'imagen': 'https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/Bubble-GumTwist-Eis-360x203.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    const Color primaryPurple = Color(0xFFD1A3D1);
    return Scaffold(
      backgroundColor: const Color(0xFFFFD1DC),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFD1DC),
        title: const Text("Pagina 3 6-J", style: TextStyle(color: Colors.black)),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Text('ORDENAR', style: TextStyle(color: primaryPurple, fontSize: 28, fontWeight: FontWeight.bold)),
            const SizedBox(height: 15),
            Expanded(
              child: ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ListTile(
                      title: Text(products[index]['nombre']!, style: const TextStyle(color: primaryPurple, fontWeight: FontWeight.bold)),
                      subtitle: const Text("Artesanal y delicioso."),
                      trailing: Image.network(products[index]['imagen']!, width: 60, fit: BoxFit.cover),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Regresar"),
            ),
          ],
        ),
      ),
    );
  }
}