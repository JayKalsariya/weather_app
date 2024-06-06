import 'package:logger/logger.dart';
import 'package:weather_app/api_helper/weather_api.dart';
import 'package:weather_app/headers.dart';
import 'package:weather_app/modal/weather_modal.dart';

class Controller extends ChangeNotifier {
  List weatherData = [];
  Logger logger = Logger();

  Controller() {
    getWeatherData();
  }

  getWeatherData() async {
    weatherData = await WeatherApi.instance.getWeather();
    // .map((e) => Weather.fromJson(e))
    // .toList();

    logger.i(weatherData);
    // WeatherApi.instance.weatherData;
    // logger.i(WeatherApi.instance.weatherData);
    notifyListeners();
  }
}
