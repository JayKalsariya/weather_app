import 'package:weather_app/headers.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor:
            (DateTime.now().hour > 5 && DateTime.now().hour <= 18)
                ? Colors.blue
                : const Color(0xff00224D),
        appBarTheme: AppBarTheme(
          backgroundColor:
              (DateTime.now().hour > 5 && DateTime.now().hour <= 18)
                  ? Colors.blue
                  : const Color(0xff00224D),
          titleTextStyle: const TextStyle(
            color: Colors.white,
            fontSize: 25,
          ),
        ),
        textTheme: const TextTheme(
          bodyText2: TextStyle(
            color: Colors.white,
          ),
        ),
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            foregroundColor: Colors.white,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      routes: Routes.routes,
    );
  }
}
