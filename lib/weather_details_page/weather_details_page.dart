import 'package:flutter/material.dart';
import 'package:weather_forecasts/custom_widgets/gradient_card.dart';
import 'package:weather_forecasts/custom_widgets/gradient_background.dart';
import 'package:weather_forecasts/theme/app_text_style.dart';
import 'package:weather_forecasts/weather_details_page/air_quality_card.dart';
import 'package:weather_forecasts/weather_details_page/seven_days_forecasts_slider.dart';

class WeatherDetailsPage extends StatefulWidget {
  const WeatherDetailsPage({super.key});

  @override
  State<WeatherDetailsPage> createState() => _WeatherDetailsPageState();
}

class _WeatherDetailsPageState extends State<WeatherDetailsPage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    List<Map<String, String>> dayWiseWeather = [
      {"temperature": "19°C", "condition": "rainy", "day": "Mon"},
      {"temperature": "18°C", "condition": "cloudy", "day": "Tue"},
      {"temperature": "18°C", "condition": "cloudy", "day": "Wed"},
      {"temperature": "19°C", "condition": "cloudy", "day": "Thu"},
      {"temperature": "18°C", "condition": "rainy", "day": "Fri"},
      {"temperature": "18°C", "condition": "cloudy", "day": "Sat"},
      {"temperature": "18°C", "condition": "cloudy", "day": "Sun"},
    ];

    return Scaffold(
      body: GradientBackground(
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 12,
                child: Column(
                  children: [
                    Expanded(
                      flex: 27,
                      child: Padding(
                        padding: EdgeInsets.only(top: screenHeight * 0.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'North America',
                              style: AppTextStyle.textStyle28cFFFFFFw400h1_2,
                            ),
                            Text(
                              'Max: 24°   Min:18°',
                              style: AppTextStyle.textStyle28cFFFFFFw400h1_2,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 35,
                      child: SevenDaysForecastsSlider(dayWiseWeather: dayWiseWeather),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 13,
                child: Column(
                  children: [
                    Expanded(
                      flex: 19,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: screenWidth * 0.1,
                          left: screenWidth * 0.1,
                          top: 7,
                          bottom: 37,
                        ),
                        child: AirQualityCard(),
                      ),
                    ),
                    Expanded(
                      flex: 23,
                      child: Padding(
                        padding: EdgeInsets.only(right: screenWidth * 0.11, left: screenWidth * 0.11,),
                        child: GridView.count(
                          crossAxisCount: 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 10,
                          padding: EdgeInsets.only(top: 5.5),
                          children: [
                            GradientCard(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5, right: 5),
                                        child: SizedBox(
                                          height: 36,
                                          width: 36,
                                          child: Image.asset(
                                            'assets/images/star.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'SUNRISE',
                                        style: AppTextStyle.textStyle16cFFFFFFw400,
                                      ),
                                    ],
                                  ),
                                  Text(
                                    '5:28 AM',
                                    style: AppTextStyle.textStyle28cFFFFFFw600h1_2,
                                  ),
                                  Text(
                                    'Sunset: 7:25',
                                    style: AppTextStyle.textStyle18cFFFFFFw600,
                                  ),
                                ],
                              ),
                            ),
                            GradientCard(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5, right: 5),
                                        child: SizedBox(
                                          height: 36,
                                          width: 36,
                                          child: Image.asset(
                                            'assets/images/star.png',
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'UV INDEX',
                                        style: AppTextStyle.textStyle16cFFFFFFw400,
                                      ),
                                    ],
                                  ),
                                  Text('4',
                                    style: AppTextStyle.textStyle28cFFFFFFw600h1_2,
                                  ),
                                  Text('Moderate',
                                    style: AppTextStyle.textStyle18cFFFFFFw600,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      )
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
