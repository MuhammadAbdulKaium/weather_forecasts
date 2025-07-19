import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weather_forecasts/weather_details_page/weather_details_page.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Weather Forecasts',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // home: HomePage(),
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomePage(), transition: Transition.native, transitionDuration: const Duration(milliseconds: 300)),
        GetPage(name: '/weather_details_page', page: () => WeatherDetailsPage(), transition: Transition.rightToLeft, transitionDuration: const Duration(milliseconds: 300))
      ],
    );
  }
}