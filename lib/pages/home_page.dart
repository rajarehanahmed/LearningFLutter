import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int days = 10;
    const String name = 'Rehan';
    return Scaffold(
      appBar: AppBar(
        title: const Text('My First App'),
      ),
      body: const Center(
        child: Text('Welcome to $days days of flutter by $name'),
      ),
      drawer: const Drawer(),
    );
  }
}
