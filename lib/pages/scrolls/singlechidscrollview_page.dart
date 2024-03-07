import 'package:flutter/material.dart';

class SingleChidScrollViewPage extends StatelessWidget {
  const SingleChidScrollViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SingleChidScrollView'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: MediaQuery.sizeOf(context).width,
              height: 200,
            ),
            Container(
              color: Colors.blue,
              width: MediaQuery.sizeOf(context).width,
              height: 200,
            ),
            Container(
              color: Colors.yellow,
              width: MediaQuery.sizeOf(context).width,
              height: 200,
            ),
            Container(
              color: Colors.green,
              width: MediaQuery.sizeOf(context).width,
              height: 200,
            ),
            Container(
              color: Colors.orange,
              width: MediaQuery.sizeOf(context).width,
              height: 200,
            ),
            Container(
              color: Colors.black54,
              width: MediaQuery.sizeOf(context).width,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
