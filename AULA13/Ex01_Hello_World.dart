// Importa o pacote material, que contém os componentes visuais padrão (botões, barras, etc)
import 'package:flutter/material.dart';

// Função principal: É o ponto de entrada (médoto main) que inicia a execução do app
void main() {
  runApp(const MyApp());
}

// Widget principal que configura o aplicativo (Raiz da árvore de Widgets)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialApp é o "Cérebro" do app: define temas, rotas e configurações globais
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a faixa de "Debug" no canto superior direito
      
      // Scaffold é o "Esqueleto" da tela: fornece AppBar, Body e outros elementos estruturais
      home: Scaffold(
        // Barra superior do aplicativo
        appBar: AppBar(
          title: const Text('Meu Primeiro App Flutter'), // Título da barra
          backgroundColor: Colors.blue, // Define a cor de fundo da AppBar como azul
          foregroundColor: Colors.white, // Define a cor do texto/ícones na AppBar como branco
        ),
        // O corpo da tela (Body)
        body: const Center(
          // O widget Center centraliza seu "filho" (child) horizontal e verticalmente
          child: MeuTexto(),
        ),
      ),
    );
  }
}

// Widget personalizado criado para exibir o texto (separado para organizar o código)
class MeuTexto extends StatelessWidget {
  const MeuTexto({super.key});

  @override
  Widget build(BuildContext context) {
    // Retorna um widget de texto com estilização personalizada
    return const Text(
      'Olá, Flutter!',
      style: TextStyle(
        fontSize: 32,              // Tamanho da fonte
        fontWeight: FontWeight.bold, // Deixa o texto em negrito
        color: Colors.blue,         // Define a cor do texto como azul
      ),
    );
  }
}
