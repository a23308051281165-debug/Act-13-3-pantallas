import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFD1DC),
      appBar: AppBar(
        title: const Text("Segunda pagina 6-J", style: TextStyle(color: Colors.red)),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.9),
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(25),
          ),
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              const Text("Registro o Ingreso", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const Divider(color: Colors.black),
              _buildTextField("Nombre"),
              _buildTextField("Apellido"),
              _buildTextField("Dirección"),
              _buildTextField("Número"),
              _buildTextField("Correo"),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFD87093).withOpacity(0.5)),
                  onPressed: () => Navigator.pushNamed(context, '/tercera'),
                  child: const Text("ingresar", style: TextStyle(color: Colors.black)),
                ),
              ),
              const SizedBox(height: 15),
              _buildOutlineBtn("O Continuar con Google"),
              _buildOutlineBtn("O Continuar con Telefono"),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String label) => TextField(
    decoration: InputDecoration(labelText: label, enabledBorder: const UnderlineInputBorder()),
  );

  Widget _buildOutlineBtn(String text) => Container(
    width: double.infinity, margin: const EdgeInsets.only(top: 8),
    padding: const EdgeInsets.symmetric(vertical: 10),
    decoration: BoxDecoration(color: Colors.white, border: Border.all(color: Colors.black)),
    child: Center(child: Text(text)),
  );
}