import 'package:filesize/filesize.dart';
import 'package:flutter/material.dart';
import 'package:flutterino/models/additional_movie_info.dart';
import 'package:flutterino/models/movie.dart';
import 'package:flutterino/widgets/my_drawer.dart';
import 'my_movie_detail_page.dart';

class MyListPage extends StatelessWidget {
  const MyListPage({Key? key, required this.movies}) : super(key: key);

  final List<Movie> movies;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List Page"),
      ),
      drawer: const MyDrawer(),
      body: ListView.builder(
        itemCount: movies.length,
        itemBuilder: (context, index) {
          var movie = movies[index];
          return MyListTileItem(movie: movie);
          //return ListTile(title: Text(movie.name),);
        },
      ),
    );
  }
}

class MyListTileItem extends StatelessWidget {
  const MyListTileItem({Key? key, required this.movie}) : super(key: key);

  final Movie movie;

  String _printDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String twoDigitMinutes = twoDigits(duration.inMinutes.remainder(60));
    String twoDigitSeconds = twoDigits(duration.inSeconds.remainder(60));
    return "${twoDigits(duration.inHours)}:$twoDigitMinutes:$twoDigitSeconds";
  }

  Flexible _getNotOverflowingText(String genre, BuildContext context) {
    return Flexible(
      child: Text(
        genre,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }

  ListTile _getListTileWithAMI(BuildContext context,
      String title, String size, String runtime, String genre) {

    return ListTile(
        title: Text(title),
        subtitle: Row(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(size),
            ),

            if (runtime.isNotEmpty) ...{
              Align(
                alignment: Alignment.center,
                child: Text(runtime),
              ),
            },
            //if (genre.isNotEmpty) const SizedBox(width: 10,),
            if (genre.isNotEmpty) ...{
              Align(
                alignment: Alignment.centerRight,
                child: _getNotOverflowingText(genre, context),
              ),
            },
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
  }

  ListTile _getListTileWithoutAMI(Movie movie, BuildContext context) {
    return ListTile(
      title: Text(movie.name),
      subtitle: Text(filesize(movie.fileSize)),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MyMovieDetailPage(movie: movie),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var info = movie.info;
    if (info == null){
      return _getListTileWithoutAMI(movie, context);
    }
    else{
      String runtime = "";
      var seconds = info.lengthSeconds ?? 0;
      var minutes = info.lengthMinutes ?? 0;
      if (seconds != 0) {
        runtime = _printDuration(Duration(seconds: seconds));
      } else if (minutes != 0) {
        runtime = _printDuration(Duration(seconds: minutes));
      }

      var genre = info.genre ?? "";
      var title = info.title ?? movie.name;
      var size = filesize(movie.fileSize).padLeft(10);
      return _getListTileWithAMI(context, title, size, runtime, genre);
    }
    /*
    return info == null
        ? _getListTileWithoutAMI(movie, context)
        : _getListTileWithAMI(movie, info, context);

     */
  }
}
