import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/controller/json_controller.dart';
import 'package:weather_app/global.dart';
import 'package:weather_app/headers.dart';

class CityListPage extends StatelessWidget {
  const CityListPage({super.key});

  @override
  Widget build(BuildContext context) {
    JsonController j = Provider.of<JsonController>(context);
    Logger logger = Logger();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cities'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          controller: Global.instance.city,
          style: const TextStyle(
            color: Colors.white,
          ),
          decoration: const InputDecoration(
            hintText: 'Enter City',
            border: OutlineInputBorder(),
            hintStyle: TextStyle(color: Colors.white),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            prefixIcon: Icon(
              CupertinoIcons.search,
              color: Colors.white,
            ),
          ),
          onSubmitted: (value) {
            logger.i(value);
            Global.instance.city2 = value;
            // j.getCities();
            Navigator.pop(context);
            logger.i(Global.instance.city.text);
          },
        ),
      ),
    );
  }
}
