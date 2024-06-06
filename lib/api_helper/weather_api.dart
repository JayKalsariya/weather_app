import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/global.dart';
import 'dart:convert';

import 'package:weather_app/modal/weather_modal.dart';

class WeatherApi {
  WeatherApi._();
  Logger logger = Logger();

  static WeatherApi instance = WeatherApi._();

  String api =
      "http://api.weatherapi.com/v1/current.json?key=65578899c53c48b999f121435240206&q=${Global.instance.city2}";

  List weatherList = [];
  // List<Weather> weatherData = [];

  Future<List> getWeather() async {
    http.Response response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      Map data = jsonDecode(response.body)["location"];
      Map data2 = jsonDecode(response.body)["current"];
      // String weather = data["name"];
      // logger.i(weather);
      weatherList.add(data);
      weatherList.add(data2);
      // logger.i(weatherList);
      // weatherData = await WeatherApi.instance.weatherList
      //     .map((e) => Weather.fromJson(e))
      //     .toList();
      //
      // logger.i(weatherData);
    }
    return weatherList;
  }
}
