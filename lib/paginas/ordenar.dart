import 'package:flutter/material.dart';

class Ordenar extends StatelessWidget {
  const Ordenar({super.key});

  final List<Map<String, String>> products = const [
    {
      'nombre': 'Helado de Vainilla',
      'imagen': 'https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/helado-de-vainilla.webp'
    },
    {
      'nombre': 'Helado de chocolate',
      'imagen': 'https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/20210330080108helado-de-chocolate.jpg'
    },
    {
      'nombre': 'Helado de fresa',
      'imagen': 'https://raw.githubusercontent.com/a23308051281165-debug/ImagenesHelados/refs/heads/main/helado-de-fresa.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFD1DC),
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black),
        title: const Text(
          "Ordenar",
          style: TextStyle(
            color: Color(0xFFD81B60),
            fontSize: 28,
            fontWeight: FontWeight.bold,
            fontFamily: 'Serif', // O una fuente cursiva si tienes instalada
          ),
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15),
            child: Icon(Icons.person_outline, color: Color(0xFFD81B60), size: 30),
          )
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: 10),
          // --- SECCIÓN CALIFICACIÓN ---
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 1.5),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Calificación", style: TextStyle(fontSize: 20)),
                  const SizedBox(width: 10),
                  Row(
                    children: List.generate(4, (index) => const Icon(Icons.star_border, color: Colors.amber, size: 28)),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 15),
          // --- BARRA DE CATEGORÍAS ---
          Container(
            color: const Color(0xFFFFD1DC),
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("Helados", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                VerticalDivider(color: Colors.black, thickness: 1),
                Text("Paletas", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                VerticalDivider(color: Colors.black, thickness: 1),
                Text("Aguas", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                VerticalDivider(color: Colors.black, thickness: 1),
                Text("FC", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Text("helados 🍦", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
          ),
          // --- LISTA DE PRODUCTOS ---
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              itemCount: products.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 140,
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.black, width: 1.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        top: 10,
                        left: 15,
                        child: Text(
                          products[index]['nombre']!,
                          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Positioned(
                        bottom: 10,
                        left: 80, // Ajustado para centrar el precio
                        child: Text("\$50", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      ),
                      Positioned(
                        bottom: 10,
                        left: 15,
                        child: Container(
                          padding: const EdgeInsets.all(2),
                          decoration: const BoxDecoration(color: Colors.green, shape: BoxShape.circle),
                          child: const Icon(Icons.add, color: Colors.white, size: 20),
                        ),
                      ),
                      Positioned(
                        right: 15,
                        top: 15,
                        bottom: 15,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            products[index]['imagen']!,
                            width: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
