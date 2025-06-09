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
      appBar: AppBar(title: Text('Puxada alta Pronada - Treino A')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('foi clicado');
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(onPressed: () {},
            child: Text('Enviar foto'),
            ),
            Text(
              'Como fazer?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18
              ),
            ),
            const Text(
              'Segura com as duas maos na barra, mantem a coluna reta, e puxa'
            ),
            const Divider(),
            const Text(
              'Como estou me sentindo?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Text(
              'senti bastande diferença hoje',
            ),
          ],
        ),
      ),
    );
  }
}
