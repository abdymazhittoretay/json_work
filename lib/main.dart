import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:json_work/secrets.dart';
import 'package:json_work/weather_api_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    getData();
    super.initState();
  }

  Future<void> getData() async {
    var url = Uri.parse(
      "https://api.openweathermap.org/data/2.5/weather?q=London&appid=$apiKey",
    );

    final response = await http.get(url);
    if (response.statusCode == 200) {
      final WeatherApiModel weatherApiModel = weatherApiModelFromJson(
        response.body,
      );
      print(weatherApiModel.feelsLike);
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.white);
  }
}
