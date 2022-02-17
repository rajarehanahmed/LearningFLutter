import 'package:flutter/material.dart';
import 'package:flutter_catalog/models/catalog.dart';

import '../widgets/drawer.dart';
import '../widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(4, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Catalog App',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index) {
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: const MyDrawer(),
    );
  }
}
