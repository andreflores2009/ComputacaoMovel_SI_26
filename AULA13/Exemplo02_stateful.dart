import 'package:flutter/material.dart'; // Importa a biblioteca de componentes do Google

// Função principal: O ponto de partida (entry point) do aplicativo
void main() {
  runApp(const MaterialApp(
    // Define qual será a tela inicial do app
    home: MeuTextoStateful(), 
    // Remove a bandeira vermelha de "Debug" do canto da tela
    debugShowCheckedModeBanner: false,
  ));
}

// Classe do Widget: Define que esta tela terá um "Estado" que pode mudar
class MeuTextoStateful extends StatefulWidget {
  const MeuTextoStateful({super.key});

  @override
  State<MeuTextoStateful> createState() => _MeuTextoStatefulState();
}

// Classe do Estado: É aqui que a lógica e a interface acontecem
class _MeuTextoStatefulState extends State<MeuTextoStateful> {
  
  // Variável que armazena o texto (Estado da tela)
  String mensagem = 'Olá, Flutter!';

  // Função para mudar o valor da variável e atualizar a tela
  void alterarMensagem() {
    // O setState avisa o Flutter para redesenhar o Widget com os novos dados
    setState(() {
      mensagem = 'Mensagem Alterada!';
    });
  }

  @override
  Widget build(BuildContext context) {
    // Scaffold: Cria a estrutura básica (Barra de título + Corpo)
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo Stateful'), // Título na barra superior
        backgroundColor: Colors.blue,          // Cor de fundo da barra
      ),
      body: Center( // Centraliza o conteúdo horizontal e verticalmente
        child: Column( // Organiza os elementos um abaixo do outro (Vertical)
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza os itens na coluna
          children: [
            // Exibe a variável mensagem com um estilo personalizado
            Text(
              mensagem,
              style: const TextStyle(
                fontSize: 24, 
                fontWeight: FontWeight.bold
              ),
            ),
            // Adiciona um espaçamento vertical de 20 pixels
            const SizedBox(height: 20), 
            // Botão que, ao ser clicado, executa a função alterarMensagem
            ElevatedButton(
              onPressed: alterarMensagem, 
              child: const Text('Alterar Mensagem'),
            ),
          ],
        ),
      ),
    );
  }
}
