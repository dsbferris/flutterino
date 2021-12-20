import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';
import 'package:flutterino/models/movie.dart';
import 'package:flutterino/widgets/my_drawer.dart';
import 'my_movie_detail_page.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({Key? key, required this.movies}) : super(key: key);

  final List<Movie> movies;

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  ListTile getListTile(Movie movie, BuildContext context) {
    var info = movie.info;
    if (info != null) {
      String? runtime;
      var secs = info.lengthSeconds;
      var mins = info.lengthMinutes;
      if (secs != null) {
        runtime = _printDuration(Duration(seconds: secs));
      } else if (mins != null) {
        runtime = _printDuration(Duration(seconds: mins));
      }
      var genre = info.genre;
      var title = info.title ?? movie.name;
      try {
        //TODO SHIT AINT WORKING IN HERE!
        return ListTile(
            title: Text(title),
            subtitle: Row(
              children: [
                Text(filesize(movie.fileSize)),
                //if (genre != null) Text(genre),
                if (runtime != null) Text(runtime),
              ],
            ),
            isThreeLine: false,
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyMovieDetailPage(movie: movie),
                ),
              );
            });
      } catch (e) {
        print(e);
        return const ListTile(title: Text("FAILURE"),);
      }
    } else {
      return ListTile(
          title: Text(movie.name),
          subtitle: Row(
            children: [
              Text(filesize(movie.fileSize)),
              Text(movie.filePath),
            ],
          ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Filter Page"),
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          var movie = movies[index];
          return getListTile(movie, context);
          /*
          return ListTile(
              title: info == null || info.title == null
                  ? Text(movie.name)
                  : Text(info.title!),
              subtitle: Text(filesize(movie.fileSize)),
              isThreeLine: false,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyMovieDetailPage(movie: movie),
                  ),
                );
              });

           */
        },
      ),
    );
  }
}
