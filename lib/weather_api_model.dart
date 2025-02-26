import 'dart:convert';

WeatherApiModel weatherApiModelFromJson(String data) =>
    WeatherApiModel.fromJson(jsonDecode(data));

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

  factory WeatherApiModel.fromJson(Map<String, dynamic> data) {
    return WeatherApiModel(
      weather: data["weather"][0]["main"],
      temp: data["main"]["temp"],
      feelsLike: data["main"]["feelsLike"],
      minTemp: data["main"]["minTemp"],
      maxTemp: data["main"]["maxTemp"],
    );
  }
}
