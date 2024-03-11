import 'dart:io';

import 'package:flutter/cupertino.dart';
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
            // Custom Dialog
            ElevatedButton(
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
            // Simple Dialog
            ElevatedButton(
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
            // Alert Dialog (Material e Cupertino AlertDialog)
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (_) {
                    if (Platform.isIOS) {
                      return CupertinoAlertDialog(
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
                    } else {
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
                    }
                  },
                );
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.red),
                  foregroundColor: MaterialStatePropertyAll(Colors.white)),
              child: const Text('Alert Dialog'),
            ),
            // TimePicker
            ElevatedButton(
              onPressed: () async {
                //if (Platform.isIOS) {
                showModalBottomSheet(
                  context: context,
                  builder: (context) {
                    return CupertinoTimerPicker(
                      onTimerDurationChanged: (value) {},
                    );
                  },
                );
                // } else {
                //   final timer = await showTimePicker(
                //     context: context,
                //     initialTime: TimeOfDay.now(),
                //   );
                //   if (kDebugMode) {
                //     print('O timer selecionado foi $timer');
                //   }
                // }
              },
              style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.yellow),
                  foregroundColor: MaterialStatePropertyAll(Colors.black)),
              child: const Text('Time Picker'),
            ),
            // Date Picker
            ElevatedButton(
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
            // About Dialog
            ElevatedButton(
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
