import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //Controla o TextField através desse widget (para textos), o controller vai pegar a informação passada pelo usuário
  final controller = TextEditingController();
  //Lista com os dados do usuário
  final list = <String>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Defini a tela de fundo amarela
      backgroundColor: Colors.amber,
      appBar:
          AppBar(backgroundColor: Colors.red, title: Text("Efac Industries")),
      body: Column(
        children: [
          //A row foi "warped" com um padding para evitar que fique grudado na extremidade da tela
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                //Haverá um Text Field para que o usuário informa textos
                Expanded(
                  child: TextField(controller: controller),
                ),
                //Botão para que execute a função de adicionar os textos do usuário
                IconButton(
                    onPressed: () {
                      //Ao usuário pressionar, o controller irá pegar o texto digitado no TextField
                      final text = controller.text;
                      //Set state para modificar o estado do widget
                      setState(() {
                        list.add(text);
                      });
                      //Limpa o textfield
                      controller.clear();
                    },
                    icon: const Icon(Icons.add))
              ],
            ),
          ),
          //Dentro da culuna, também teremos um ListView
          Expanded(
            child: ListView.builder(
                itemCount: list.length,
                //Responsável por construir a lista, com um context e index
                itemBuilder: ((context, index) {
                  final item = list[index];
                  return ListTile(
                    title: Text(item),
                  );
                })),
          ),
        ],
      ),
    );
  }
}
