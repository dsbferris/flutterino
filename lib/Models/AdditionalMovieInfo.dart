import 'package:json_annotation/json_annotation.dart';

part 'AdditionalMovieInfo.g.dart';

@JsonSerializable()
class AdditionalMovieInfo{
  final String? Title;
  final String? Genre;
  final String? Description;
  final int? AgeRating;
  final int? LengthSeconds;
  final int? LengthMinutes;
  final List<String?>? AudioLanguages;
  final String? SerienName;

  AdditionalMovieInfo({this.Title, this.Genre, this.Description, this.AgeRating, this.LengthMinutes, this.LengthSeconds, this.AudioLanguages, this.SerienName});

  factory AdditionalMovieInfo.fromJson(Map<String, dynamic> json) => _$AdditionalMovieInfoFromJson(json);

  Map<String, dynamic> toJson() => _$AdditionalMovieInfoToJson(this);
}
