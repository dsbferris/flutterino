import 'package:flutter/material.dart';
import 'package:flutterino/models/movie.dart';

class MyListPage extends StatefulWidget {
  const MyListPage({Key? key, required this.movies}) : super(key: key);

  final List<Movie> movies;

  @override
  State<MyListPage> createState() => _MyListPageState();
}

class _MyListPageState extends State<MyListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
      ),
      body: ListView.builder(
        addAutomaticKeepAlives: true,
        cacheExtent: widget.movies.length.toDouble(),
        itemCount: widget.movies.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(widget.movies[index].name),
          );
        },
      ),
    );
  }
}
