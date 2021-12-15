// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Movie.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Movie _$MovieFromJson(Map<String, dynamic> json) => Movie(
      Name: json['Name'] as String,
      FilePath: json['FilePath'] as String,
      FileSize: json['FileSize'] as int,
      Info: json['Info'] == null
          ? null
          : AdditionalMovieInfo.fromJson(json['Info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MovieToJson(Movie instance) => <String, dynamic>{
      'Name': instance.Name,
      'FileSize': instance.FileSize,
      'FilePath': instance.FilePath,
      'Info': instance.Info,
    };
