import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView'),
      ),
      body: ListView.separated(
        //body: ListView.builder(
        itemCount: 100,
        itemBuilder: (context, index) {
          if (kDebugMode) {
            print('Índice carregado $index');
          }
          return ListTile(
            title: Text('Elemento ${index + 1}'),
            subtitle: const Text('Flutter é top!'),
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://res.cloudinary.com/startup-grind/image/upload/c_fill,dpr_2.0,f_auto,g_center,h_1080,q_100,w_1080/v1/gcs/platform-data-dsc/events/Flutter%20Bird.png'),
            ),
            trailing: const CircleAvatar(),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.black12,
          );
        },
      ),
    );
  }
}
