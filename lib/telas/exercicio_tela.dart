import 'package:estudando_do_zero/modelos/exercicio_modelo.dart';
import 'package:estudando_do_zero/modelos/sentimento_modelo.dart';
import 'package:flutter/material.dart';

class ExercicioTela extends StatelessWidget {
  ExercicioTela({super.key});

  final ExercicioModelo exercicio = ExercicioModelo(
    id: 'EX001',
    nome: 'REMADA BAIXA PRONADA',
    treino: 'Treino A',
    comoFazer: 'Segura a barra e puxa',
  );

  final List<SentimentoModelo> sentimentos = [
    SentimentoModelo(
      id: 'S001',
      sentindo: 'Senti bastante diferença hoje',
      data: '2023-10-01',
    ),
    SentimentoModelo(
      id: 'S002',
      sentindo: 'Ja estou conseguindo fazer mais repetições',
      data: '2023-10-02',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Column(
          children: [
            Text(exercicio.nome, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            Text(exercicio.treino, style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic)),
          ],
        ),
        centerTitle: true,
        backgroundColor: const Color(0xff0a6d92),
        elevation: 0,
        toolbarHeight: 72.0,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(16.0)),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('foi clicado');
        },
        child: Icon(Icons.add),
      ),
      body: Container(
        margin: const EdgeInsets.all(16.0),
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: ListView(
          children: [
            SizedBox(
              height: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Enviar foto'),
                  ),
                  ElevatedButton(onPressed: () {}, child: const Text('Tirar foto')),
                ],
              ),
            ),
            const SizedBox(height: 8), 
            const Text(
              'Como fazer?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8), 
            Text(exercicio.comoFazer),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: const Divider(color: Colors.black),
            ),
            const Text(
              'Como estou me sentindo?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            const SizedBox(height: 8), 
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(sentimentos.length, (index) {
                SentimentoModelo sentimentoAgora = sentimentos[index];
                return ListTile(
                  dense: true,
                  contentPadding: EdgeInsets.zero,
                  title: Text(sentimentoAgora.sentindo), 
                  subtitle: Text(sentimentoAgora.data),
                  leading: const Icon(Icons.double_arrow),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    color: Colors.red,
                    onPressed: () {
                      print('Deletar ${sentimentoAgora.sentindo}');
                    },
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
