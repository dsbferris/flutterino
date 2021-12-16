import 'package:flutter/material.dart';

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
      body: Center(
        child: Column(
          children: const [Text("Test")],
        ),
      ),
    );
  }
}
