import 'package:weather_app/headers.dart';
import 'package:weather_app/screens/citylist/city_list_page.dart';

class Routes {
  static const String home = '/';
  static const String city = 'city';

  static Map<String, WidgetBuilder> routes = {
    '/': (context) => HomePage(),
    'city': (context) => const CityListPage(),
  };
}
