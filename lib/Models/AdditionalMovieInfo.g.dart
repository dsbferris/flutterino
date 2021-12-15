// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AdditionalMovieInfo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdditionalMovieInfo _$AdditionalMovieInfoFromJson(Map<String, dynamic> json) =>
    AdditionalMovieInfo(
      Title: json['Title'] as String?,
      Genre: json['Genre'] as String?,
      Description: json['Description'] as String?,
      AgeRating: json['AgeRating'] as int?,
      LengthMinutes: json['LengthMinutes'] as int?,
      LengthSeconds: json['LengthSeconds'] as int?,
      AudioLanguages: (json['AudioLanguages'] as List<dynamic>?)
          ?.map((e) => e as String?)
          .toList(),
      SerienName: json['SerienName'] as String?,
    );

Map<String, dynamic> _$AdditionalMovieInfoToJson(
        AdditionalMovieInfo instance) =>
    <String, dynamic>{
      'Title': instance.Title,
      'Genre': instance.Genre,
      'Description': instance.Description,
      'AgeRating': instance.AgeRating,
      'LengthSeconds': instance.LengthSeconds,
      'LengthMinutes': instance.LengthMinutes,
      'AudioLanguages': instance.AudioLanguages,
      'SerienName': instance.SerienName,
    };
