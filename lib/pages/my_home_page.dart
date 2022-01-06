import 'package:flutter/material.dart';
import '../navigation/my_drawer.dart';
import 'package:flutter_vlc_player/flutter_vlc_player.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final guns = "sambaserver//hd1//dbox1//2_Guns.001.ts";


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
