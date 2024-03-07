import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rows & Columns'),
      ),
      body: Container(
        color: Colors.red,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(color: Colors.blue, child: const Text('Elemento 1')),
            Container(color: Colors.yellow, child: const Text('Elemento 2')),
            Container(color: Colors.green, child: const Text('Elemento 3')),
            Container(
              height: 200,
              color: Colors.orange,
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Elemento 1'),
                    Text('Elemento 2'),
                    Text('Elemento 3'),
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
