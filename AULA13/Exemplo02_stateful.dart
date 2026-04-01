import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MeuTextoStateful(),
    debugShowCheckedModeBanner: false,
  ));
}

class MeuTextoStateful extends StatefulWidget {
  const MeuTextoStateful({super.key});

  @override
  State<MeuTextoStateful> createState() => _MeuTextoStatefulState();
}

class _MeuTextoStatefulState extends State<MeuTextoStateful> {
  String mensagem = 'Olá, Flutter!';

  void alterarMensagem() {
    setState(() {
      mensagem = 'Mensagem Alterada!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Stateful'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mensagem,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20), // Espaço em branco de 20 pixels
            ElevatedButton(
              onPressed: alterarMensagem, // Chama a função para alterar o texto
              child: const Text('Alterar Mensagem'),
            ),
          ],
        ),
      ),
    );
  }
}
