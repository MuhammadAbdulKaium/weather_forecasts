import 'package:flutter/material.dart';

import '../theme/app_text_style.dart';

class SevenDaysForecastsSlider extends StatelessWidget {
  final List<Map<String, String>> dayWiseWeather;
  const SevenDaysForecastsSlider({
    super.key,
    required this.dayWiseWeather,
  });

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Text(
          '7-Days Forecasts',
          style: AppTextStyle.textStyle24cFFFFFFw700,
        ),
        const SizedBox(height: 12),
        Padding(
          padding: const EdgeInsets.only(left: 8, right: 4),
          child: Row(
            children: [
              Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(13),
                  onTap: () {
                    // handle tap
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: dayWiseWeather.map((weather) {
                      return Padding(
                        padding: EdgeInsets.only(
                          top: screenHeight * 0.0035,
                          left: 3,
                          right: 3,
                        ),
                        child: Container(
                          height: screenHeight * 0.186,
                          width: screenWidth * 0.1885,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: weather['condition'] == 'cloudy'
                                ? LinearGradient(
                              colors: [
                                Color(0xFF3E2D8F),
                                Color(0xFF8E78C8),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )
                                : weather['condition'] == 'rainy'
                                ? LinearGradient(colors: [Color(0xFF3E2D8F), Color(0xFF9D52AC),],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )
                                : LinearGradient(colors: [Color(0xFF634ea1), Color(0xFF9d52ac),],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                weather['temperature'] ?? '',
                                style: AppTextStyle.textStyle20cFFFFFFw500,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(
                                  horizontal: 6,
                                ),
                                child: SizedBox(
                                  child:
                                  weather['condition'] == 'cloudy'
                                      ? Image.asset('assets/images/cloudy.png', fit: BoxFit.cover,)
                                      : weather['condition'] == 'rainy'
                                      ? Image.asset('assets/images/rain.png', fit: BoxFit.cover,)
                                      : Text('cloudy', style: AppTextStyle.textStyle20cFFFFFFw500,),
                                ),
                              ),
                              Text(
                                weather['day'] ?? '',
                                style: AppTextStyle.textStyle20cFFFFFFw500,
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(13),
                  onTap: () {
                    // handle tap
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: 24,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
