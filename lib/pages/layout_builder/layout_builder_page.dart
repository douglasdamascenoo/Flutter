import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({super.key});

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {}

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Layout Builder',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: constraints.maxHeight * .5,
                  width: constraints.maxWidth * .5,
                  color: Colors.blue,
                ),
                Container(
                  height: constraints.maxHeight * .5,
                  width: constraints.maxWidth,
                  color: Colors.red,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
