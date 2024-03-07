import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              // Custom Dialog
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (_) {
                    return DialogCustom(_);
                  },
                );
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.green),
                  foregroundColor: MaterialStatePropertyAll(Colors.white)),
              child: const Text('Dialog'),
            ),
            ElevatedButton(
              // Simple Dialog
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (_) {
                    return SimpleDialog(
                      title: const Text('Simple Dialog'),
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(10),
                          child: Text('Body'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(),
                          child: const Text('Fechar Modal'),
                        ),
                      ],
                    );
                  },
                );
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue),
                  foregroundColor: MaterialStatePropertyAll(Colors.white)),
              child: const Text('Simple Dialog'),
            ),
            ElevatedButton(
              // Alert Dialog
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    return AlertDialog(
                      title: const Text('Alert Dialog'),
                      content: const SingleChildScrollView(
                        child: ListBody(
                          children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text('Body'),
                            ),
                          ],
                        ),
                      ),
                      actions: [
                        TextButton(
                            onPressed: () {}, child: const Text('Cancelar')),
                        TextButton(
                            onPressed: () {}, child: const Text('Confirmar')),
                      ],
                    );
                  },
                );
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                  foregroundColor: MaterialStatePropertyAll(Colors.white)),
              child: const Text('Alert Dialog'),
            ),
            ElevatedButton(
              // TimePicker
              onPressed: () async {
                final timer = await showTimePicker(
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
                if (kDebugMode) {
                  print('O timer selecionado foi $timer');
                }
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.yellow),
                  foregroundColor: MaterialStatePropertyAll(Colors.black)),
              child: const Text('Time Picker'),
            ),
            ElevatedButton(
              // Date Picker
              onPressed: () async {
                final date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2024, 12, 31),
                );
                if (kDebugMode) {
                  print('Data selecionada foi $date');
                }
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.orange),
                  foregroundColor: MaterialStatePropertyAll(Colors.white)),
              child: const Text('Date Picker'),
            ),
            ElevatedButton(
              // About Dialog
              // Date Picker
              onPressed: () async {
                showAboutDialog(
                  context: context,
                  applicationIcon: const Icon(Icons.flutter_dash_outlined),
                );
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.grey),
                  foregroundColor: MaterialStatePropertyAll(Colors.white)),
              child: const Text('About Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
