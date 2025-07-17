import 'package:flutter/material.dart';
import 'package:weather_forecasts/gradient_background.dart';
import 'package:weather_forecasts/theme/app_text_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                // height: 300,
                child: Image.asset(
                  'assets/images/cloudy.png',
                  fit: BoxFit.cover,
                ),
              ),
              Text('data', style: AppTextStyle.textStyle64FFFFFFw700),
            ],
          ),
        ),
      ),
    );
  }
}
