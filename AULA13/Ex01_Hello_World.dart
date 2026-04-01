import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a faixa de "Debug" no canto
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu Primeiro App Flutter'),
          backgroundColor: Colors.blue, // Adicionei uma cor para destacar a AppBar
          foregroundColor: Colors.white,
        ),
        body: const Center(
          child: MeuTexto(),
        ),
      ),
    );
  }
}

class MeuTexto extends StatelessWidget {
  const MeuTexto({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Olá, Flutter!',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }
}
