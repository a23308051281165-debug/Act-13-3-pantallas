import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 235, 205, 162), 
      appBar: AppBar(
        title: const Text(
          "inicio Valdez Dana 6-J",
          style: TextStyle(color: Color(0xFFADD8E6)),
        ),
        backgroundColor: const Color(0xFF4169E1),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned(
            top: 0, left: 0, right: 0,
            height: MediaQuery.of(context).size.height * 0.6,
            child: CustomPaint(painter: FullScreenIceCreamPainter()),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildText("BAD", 80),
                const Text("ice", style: TextStyle(fontSize: 50, fontStyle: FontStyle.italic)),
                _buildText("CREAM", 70),
                const SizedBox(height: 120),
              ],
            ),
          ),
          Positioned(
            bottom: 60, left: 0, right: 0,
            child: Center(
              child: InkWell(
                onTap: () => Navigator.pushNamed(context, '/segunda'),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF4D03F), 
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: const Text("Inicio", style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildText(String text, double size) {
    return Text(text, style: TextStyle(
      fontSize: size, fontWeight: FontWeight.bold, color: const Color(0xFFD87093),
      shadows: const [Shadow(blurRadius: 2, color: Colors.black26, offset: Offset(2, 2))],
    ));
  }
}

class FullScreenIceCreamPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = const Color(0xFFFADADD);
    final borderPaint = Paint()..color = Colors.black..style = PaintingStyle.stroke..strokeWidth = 2;
    final path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(size.width * 0.2, size.height + 20, size.width * 0.4, size.height - 40);
    path.quadraticBezierTo(size.width * 0.6, size.height - 100, size.width * 0.8, size.height - 20);
    path.quadraticBezierTo(size.width * 0.9, size.height + 20, size.width, size.height - 60);
    path.lineTo(size.width, 0);
    path.close();
    canvas.drawPath(path, paint);
    canvas.drawPath(path, borderPaint);
  }
  @override bool shouldRepaint(covariant CustomPainter old) => false;
}