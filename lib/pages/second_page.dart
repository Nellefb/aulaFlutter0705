import 'package:flutter/material.dart';
import 'package:navegacao/mensagem.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Mensagem;

    return Scaffold(
      appBar: AppBar(title: Text(arguments.descricao),),
      body: Center(child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).pop();
        },
        child: const Text('Voltar!'),
      ),),
    );
  }
}

// https://www.canva.com/design/DAFi_tPlnMA/bF9aYHx7lB5DHCBbNJtksA/edit