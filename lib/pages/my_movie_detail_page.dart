import 'package:flutter/material.dart';
import 'package:flutterino/models/movie.dart';
import 'package:filesize/filesize.dart';

class MyMovieDetailPage extends StatelessWidget {
  const MyMovieDetailPage({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(movie.name),
            Text(filesize(movie.fileSize)),
            movie.info == null
                ? const Text("No additional movie infos available")
                : const Text("Not null!"),
            const Text("Not null2!"),
          ],
        ),
      ),
    );
  }
}
