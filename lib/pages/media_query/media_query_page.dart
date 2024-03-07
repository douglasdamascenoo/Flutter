import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    var vAppBar = AppBar(
      title: const Text(
        'Media Query',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
        ),
      ),
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      backgroundColor: Colors.green,
    );

    if (kDebugMode) {
      print('Orientação: ${mediaQuery.orientation}');
      print('Largura: ${mediaQuery.size.width}');
      print('Altura: ${mediaQuery.size.height}');
      print('StatusBar: ${mediaQuery.padding.top}');
      print('AppBarDefault: $kToolbarHeight');
      print('MinhaAppBar: ${vAppBar.preferredSize.height}');
    }

    final alturaStatusBar = mediaQuery.padding.top;
    const alturaAppBar = kToolbarHeight;
    final tamanhoBody = mediaQuery.size.height - alturaStatusBar - alturaAppBar;

    return Scaffold(
      appBar: vAppBar,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: tamanhoBody * .5,
              width: mediaQuery.size.width * .5,
              color: Colors.blue,
            ),
            Container(
              height: tamanhoBody * .5,
              width: mediaQuery.size.width,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
