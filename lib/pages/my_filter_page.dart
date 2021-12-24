import 'package:flutter/material.dart';
import 'package:flutterino/widgets/my_drawer.dart';

class MyFilterPage extends StatelessWidget {
  const MyFilterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter Page"),
      ),
      drawer: const MyDrawer(),
      body: const Placeholder(),
    );
  }
}
