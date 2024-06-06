import 'dart:ui';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/api_helper/weather_api.dart';
import 'package:weather_app/controller/weather_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    Controller c = Provider.of<Controller>(context);
    Logger logger = Logger();
    String condition = WeatherApi.instance.weatherList[1]['condition']['text'];

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, 'city');
            },
            icon: const Icon(
              Icons.list_alt_rounded,
              // color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.more_vert_rounded,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
//City
            Text(
              c.weatherData[0]['name'],
              // c.weatherData[0].name,
              // c.getWeatherData().toString(),
              // WeatherApi.instance.weatherList[0]['name'],
              style: const TextStyle(
                fontSize: 40,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Stack(
              children: [
//Image
                Transform.translate(
                  // offset: const Offset(200, 30),
                  offset: const Offset(70, -80),
                  child: Transform.scale(
                    scale: 0.5,
                    child: Image(
                      image: NetworkImage(
                        (condition == "Sunny")
                            ? 'https://cdn3d.iconscout.com/3d/free/thumb/free-sun-8349450-6692712.png?f=webp'
                            : (condition == "Rainy")
                                ? 'https://cdn3d.iconscout.com/3d/premium/thumb/cloud-rain-and-lightning-5445617-4551611.png'
                                : (condition == "Windy")
                                    ? 'https://static.vecteezy.com/system/resources/thumbnails/033/859/044/small_2x/cloud-and-blowing-wind-3d-icon-png.png'
                                    : (condition == 'Stormy')
                                        ? 'https://cdn3d.iconscout.com/3d/premium/thumb/stormy-weather-lightning-warning-10514814-8460071.png?f=webp'
                                        : (condition == 'Cloudy')
                                            ? 'https://static.vecteezy.com/system/resources/thumbnails/022/287/823/small/3d-rendering-sun-covered-by-clouds-icon-3d-render-cloudy-weather-with-sun-icon-sun-covered-by-clouds-png.png'
                                            : 'https://cdn3d.iconscout.com/3d/premium/thumb/cloud-3100509-2589436.png',
                        // "https:${WeatherApi.instance.weatherList[1]['condition']['icon']}",
                        // "https://cdn3d.iconscout.com/3d/free/thumb/free-sun-8349450-6692712.png?f=webp",
                      ),
                    ),
                  ),
                ),
//Temperature
                Transform.translate(
                  offset: const Offset(0, 140),
                  child: Row(
                    children: [
//Temperature
                      Text(
                        "${WeatherApi.instance.weatherList[1]['temp_c']} \u2103",
                        style: const TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
//Condition
                      Transform.translate(
                        offset: const Offset(10, 10),
                        child: Text(
                          WeatherApi.instance.weatherList[1]['condition']
                              ['text'],
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // const SizedBox(height: 0),
//Weather Details
            const Text(
              "Weather Details",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.thermostat_rounded),
                            Text(
                              "Feels Like",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              "${WeatherApi.instance.weatherList[1]['feelslike_c']} \u2103",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(CupertinoIcons.wind),
                            Text(
                              "Wind",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              "${WeatherApi.instance.weatherList[1]['wind_kph']} km/h",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.water_drop_outlined),
                            Text(
                              "Humidity",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              "${WeatherApi.instance.weatherList[1]['humidity']} %",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(CupertinoIcons.sun_max),
                            Text(
                              "UV",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              "${WeatherApi.instance.weatherList[1]['uv']}",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.visibility_outlined),
                            Text(
                              "Visibility",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              "${WeatherApi.instance.weatherList[1]['vis_km']} km",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(CupertinoIcons.wind),
                            Text(
                              "Air Pressure",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              "${WeatherApi.instance.weatherList[1]['pressure_mb']} mb",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: size.height * 0.01),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(Icons.wind_power_rounded),
                            Text(
                              "Wind Direction",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              "${WeatherApi.instance.weatherList[1]['wind_dir']}",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                ClipRRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                    child: Container(
                      height: size.height * 0.18,
                      width: size.width * 0.43,
                      decoration: BoxDecoration(
                        color: Colors.transparent.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Icon(CupertinoIcons.cloud_drizzle_fill),
                            Text(
                              "Cloud",
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.white.withOpacity(0.5),
                              ),
                            ),
                            Text(
                              "${WeatherApi.instance.weatherList[1]['cloud']} %",
                              style: const TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
