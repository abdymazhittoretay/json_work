// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherApiModel _$WeatherApiModelFromJson(Map<String, dynamic> json) =>
    WeatherApiModel(
      weather: json['weather'][0]["main"] as String?,
      temp: (json['temp'] as num?)?.toDouble(),
      feelsLike: (json['feelsLike'] as num?)?.toDouble(),
      minTemp: (json['minTemp'] as num?)?.toDouble(),
      maxTemp: (json['maxTemp'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$WeatherApiModelToJson(WeatherApiModel instance) =>
    <String, dynamic>{
      'weather': instance.weather,
      'temp': instance.temp,
      'feelsLike': instance.feelsLike,
      'minTemp': instance.minTemp,
      'maxTemp': instance.maxTemp,
    };
