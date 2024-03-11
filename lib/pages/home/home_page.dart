import 'package:flutter/material.dart';

enum PopupMenuPages {
  container,
  rowscolumns,
  mediaquery,
  layoutbuilder,
  botoesrotacaotexto,
  singlechidscrollview,
  listview,
  dialogs,
  snackbars,
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          PopupMenuButton<PopupMenuPages>(
            onSelected: (PopupMenuPages valueSelected) {
              switch (valueSelected) {
                case PopupMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;
                case PopupMenuPages.rowscolumns:
                  Navigator.of(context).pushNamed('/rowscolumns');
                  break;
                case PopupMenuPages.mediaquery:
                  Navigator.of(context).pushNamed('/mediaquery');
                  break;
                case PopupMenuPages.layoutbuilder:
                  Navigator.of(context).pushNamed('/layoutbuilder');
                  break;
                case PopupMenuPages.botoesrotacaotexto:
                  Navigator.of(context).pushNamed('/botoesrotacaotexto');
                  break;
                case PopupMenuPages.singlechidscrollview:
                  Navigator.of(context).pushNamed('/scrolls/singlechid');
                  break;
                case PopupMenuPages.listview:
                  Navigator.of(context).pushNamed('/scrolls/listview');
                  break;
                case PopupMenuPages.dialogs:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                case PopupMenuPages.snackbars:
                  Navigator.of(context).pushNamed('/snackbar');
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return <PopupMenuItem<PopupMenuPages>>[
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.container,
                  child: Text('Container'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.rowscolumns,
                  child: Text('Rows & Columns'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.mediaquery,
                  child: Text('Media Query'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.layoutbuilder,
                  child: Text('Layout Builder'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.botoesrotacaotexto,
                  child: Text('Botões e Rotação de Texto'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.singlechidscrollview,
                  child: Text('SingleChidScrollView'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.listview,
                  child: Text('ListView'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.dialogs,
                  child: Text('Dialogs'),
                ),
                const PopupMenuItem<PopupMenuPages>(
                  value: PopupMenuPages.snackbars,
                  child: Text('Snackbars'),
                ),
              ];
            },
          ),
        ],
      ),
      body: Theme(
        //data: ThemeData(primaryColor: Colors.amber),
        data: Theme.of(context).copyWith(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Bottão de Teste'),
              ),
              Container(
                height: 100,
                width: 300,
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
