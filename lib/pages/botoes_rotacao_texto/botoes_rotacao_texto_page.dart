import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botões e Rotação de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.access_time),
                RotatedBox(
                  quarterTurns: 2,
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    color: Colors.blue,
                    child: const Text('Douglas Damasceno'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.red,
                  padding: const EdgeInsets.all(20),
                  minimumSize: const Size(50, 50)),
              child: const Text('Botão de Texto'),
            ),
            const SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.add_comment_outlined),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Botão'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.air),
              label: const Text('Modo Avião'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black87),
                backgroundColor: MaterialStateProperty.all(Colors.yellow),
                shadowColor: MaterialStateProperty.all(Colors.blue),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: const Text('Botão Estilizado'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black87),
                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.green;
                  } else if (states.contains(MaterialState.pressed)) {
                    return Colors.red;
                  } else {
                    return Colors.blue;
                  }
                }),
                minimumSize: MaterialStateProperty.all(const Size(300, 40)),
                shadowColor: MaterialStateProperty.all(Colors.blue),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              child: const Text('Botão with State'),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {},
              child: const Text('InkWell'),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              child: const Text('Gesture Detector'),
              // ignore: avoid_print
              onTap: () => print('Botão clicado'),
              // ignore: avoid_print
              onVerticalDragDown: (_) => print('Botão arrastado'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      offset: Offset(0, 5),
                      color: Colors.black45)
                ],
                gradient: LinearGradient(
                  colors: [Colors.yellow, Colors.orange, Colors.red],
                ),
              ),
              child: InkWell(
                // ignore: avoid_print
                onTap: () => print('InkWell Clicado'),
                child: const Center(
                  child: Text(
                    'BOTÃO',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
