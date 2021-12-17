import 'package:flutter/material.dart';

class MyFavouritesPage extends StatefulWidget {
  const MyFavouritesPage({Key? key}) : super(key: key);

  @override
  State<MyFavouritesPage> createState() => _MyFavouritesPageState();
}

class _MyFavouritesPageState extends State<MyFavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favourties"),
      ),
      body: const Placeholder(),
    );
  }
}
