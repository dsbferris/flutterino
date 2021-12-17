import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutterino/pages/my_favourites_page.dart';
import 'package:flutterino/pages/my_filter_page.dart';
import 'package:flutterino/pages/my_list_page.dart';

import 'models/movie.dart';
import 'pages/my_home_page.dart';
import 'helpers/asset_helper.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kDebugMode &&
      (Platform.isWindows || Platform.isLinux || Platform.isMacOS)) {
    await DesktopWindow.setWindowSize(const Size(360, 740));
  }
  var movies = await getMoviesFromAsset();
  runApp(MyApp(movies: movies));
}

class MyApp extends StatelessWidget {
  final List<Movie> movies;

  const MyApp({Key? key, required this.movies}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutterino',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
      ),
      //home: const MyHomePage(title: 'Flutterino Home Page'),
      routes: {
        '/': (context) => const MyHomePage(),
        '/list': (context) => MyListPage(movies: movies),
        '/filter': (context) => const MyFilterPage(),
        '/favourites': (context) => const MyFavouritesPage(),
      },
      initialRoute: '/',
    );
  }
}
