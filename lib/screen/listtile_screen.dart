import 'package:batch32b/common/listtile_common.dart';
import 'package:flutter/material.dart';

class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Tile'),
        backgroundColor: Colors.amber[100],
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // for (int i = 0; i < 20; i++) CommonListTile(index: i, imageName: "image1",),
            for (int i = 0; i < 10; i++)
              if (i % 2 == 0) ...{
                ...{
                  CommonListTile(
                    index: i,
                    imageName: "image 1",
                  )
                }
              } else ...{
                ...{
                  CommonListTile(
                    index: i,
                    imageName: "image 2",
                  )
                }
              }
          ],
        ),
      ),
    );
  }
}
