import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyDrawer extends StatelessWidget{
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Column(
              children: [
                const Icon(FontAwesomeIcons.crow),
                const Spacer(),
                Expanded(
                  child: Text(
                    "Pages",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                )
              ],
            ),
            decoration: const BoxDecoration(
              color: Colors.teal,
            ),
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.home),
            title: const Text("Home"),
            onTap: () {
              Navigator.pushNamed(context, '/');
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.filter),
            title: const Text("Filter"),
            onTap: () {
              Navigator.pushNamed(context, '/filter');
            },
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.list),
            title: const Text("List"),
            onTap: () {
              Navigator.pushNamed(context, '/list');
            },
          ),
        ],
      ),
    );
  }


}
