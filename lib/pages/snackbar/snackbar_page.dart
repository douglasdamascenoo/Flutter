import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SnackbarPage extends StatelessWidget {
  const SnackbarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Registro salvo com sucesso!'),
                  backgroundColor: Colors.red,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Simple Snackbar'),
            ),
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Registro salvo com sucesso!'),
                  backgroundColor: Colors.red,
                  action: SnackBarAction(
                      label: 'Desfazer',
                      onPressed: () {
                        if (kDebugMode) {
                          print('CLICADO!!!');
                        }
                      }),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Action Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
