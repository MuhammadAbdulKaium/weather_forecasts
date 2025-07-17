import 'package:flutter/material.dart';
import 'package:weather_forecasts/gradient_background.dart';
import 'package:weather_forecasts/theme/app_text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: GradientBackground(
        child: Center(
          child: Column(
            children: [
              Expanded(
                flex: 23,
                child: SizedBox(
                  // height: screenHeight * 0.1,
                  child: Image.asset(
                    'assets/images/cloudy.png',
                    // fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                flex: 18,
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Flexible(
                      flex: 6,
                      fit: FlexFit.tight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('Weather', style: AppTextStyle.textStyle64cFFFFFFw700),
                          Text('ForeCasts', style: AppTextStyle.textStyle64cDDB130w500),
                        ],
                      ),
                    ),
                    // SizedBox(height: screenHeight * 0.055,),
                    Flexible(
                      flex: 6,
                      fit: FlexFit.loose,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 13),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 50),
                              child: SizedBox(
                                width: double.maxFinite,
                                height: 72,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFFDDB130)
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    'Get Start',
                                    style: AppTextStyle.textStyle28c362A84w700,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    // SizedBox(height: screenHeight * 0.065,),
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
