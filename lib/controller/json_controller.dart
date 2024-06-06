import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:weather_app/headers.dart';

class JsonController extends ChangeNotifier {
  List cities = [];

  JsonController() {
    getCities();
  }

  getCities() async {
    String data = await rootBundle.loadString('assets/cities.json');

    List cities = jsonDecode(data);
    notifyListeners();
  }
}
