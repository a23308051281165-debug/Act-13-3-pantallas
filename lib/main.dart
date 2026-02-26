import 'package:flutter/material.dart';
import 'package:myapp/paginas/Inicio.dart';
import 'package:myapp/paginas/registro.dart';
import 'package:myapp/paginas/ordenar.dart';

void main() {
  runApp(const BadIceCreamApp());
}

class BadIceCreamApp extends StatelessWidget {
  const BadIceCreamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bad Ice Cream Valdez',
      initialRoute: '/',
      routes: {
        '/': (context) => const Inicio(),
        '/segunda': (context) => const Registro(),
        '/tercera': (context) => const Ordenar(),
      },
    );
  }
}