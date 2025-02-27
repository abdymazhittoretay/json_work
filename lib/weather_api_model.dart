import 'dart:convert';
import 'package:json_annotation/json_annotation.dart';

part 'weather_api_model.g.dart';

WeatherApiModel weatherApiModelFromJson(String data) =>
    WeatherApiModel.fromJson(jsonDecode(data));

@JsonSerializable(explicitToJson: true)
class WeatherApiModel {
  final String? weather;
  final double? temp;
  final double? feelsLike;
  final double? minTemp;
  final double? maxTemp;

  WeatherApiModel({
    required this.weather,
    required this.temp,
    required this.feelsLike,
    required this.minTemp,
    required this.maxTemp,
  });

  factory WeatherApiModel.fromJson(Map<String, dynamic> data) =>
      _$WeatherApiModelFromJson(data);
}
