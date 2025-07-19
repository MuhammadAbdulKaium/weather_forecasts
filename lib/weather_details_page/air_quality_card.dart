import 'package:flutter/material.dart';
import '../theme/app_text_style.dart';

class AirQualityCard extends StatelessWidget {
  const AirQualityCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [Color(0xFF3E2D8F), Color(0xFF9D52AC)],
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
          stops: [0.0, 1.0],
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.038,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 13.5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 6, right: 11),
                      child: SizedBox(
                        height: 24,
                        width: 24,
                        child: Image.asset(
                          'assets/images/icon_crosshairs.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Text(
                      'AIR QUALITY',
                      style: AppTextStyle.textStyle16cFFFFFFw400,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Text(
                '3-Low Health Risk',
                style: AppTextStyle.textStyle28cFFFFFFw600,
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 4.9,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Color(0xFF362a84),
                          Color(0xFF805BCA),
                          Color(0xFF8258c4),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 9,
                        fit: FlexFit.tight,
                        child: Text(
                          'See more',
                          style: AppTextStyle.textStyle18cFFFFFFw600,
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.loose,
                        child: Icon(
                          Icons.chevron_right,
                          color: Colors.white,
                          size: 39,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
