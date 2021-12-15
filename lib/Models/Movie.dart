import 'package:json_annotation/json_annotation.dart';
import 'AdditionalMovieInfo.dart';

part 'Movie.g.dart';

@JsonSerializable()
class Movie{
  final String Name;
  final int FileSize;
  final String FilePath;
  final AdditionalMovieInfo? Info;

  Movie({required this.Name, required this.FilePath, required this.FileSize, this.Info});

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);

  Map<String, dynamic> toJson() => _$MovieToJson(this);
}
