import 'package:provider/provider.dart';
import 'package:weather_app/api_helper/weather_api.dart';
import 'package:weather_app/controller/json_controller.dart';
import 'package:weather_app/controller/weather_controller.dart';
import 'package:weather_app/headers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await WeatherApi.instance.getWeather();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Controller(),
        ),
        ChangeNotifierProvider(
          create: (context) => JsonController(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}
