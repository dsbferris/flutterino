import 'package:flutter/material.dart';
import 'package:flutterino/widgets/my_drawer.dart';

class MyFilterPage extends StatefulWidget {
  const MyFilterPage({Key? key}) : super(key: key);

  @override
  State<MyFilterPage> createState() => _MyFilterPageState();
}

class _MyFilterPageState extends State<MyFilterPage> {
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
