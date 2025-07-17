import 'package:flutter/cupertino.dart';

class GradientBackground extends StatelessWidget {
  final Widget child;
  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color(0xFF182140), // Top color (dark blue/purple)
            Color(0xFF9739ab), // Bottom color (light purple/pink)
          ]
        )
      ),
      child: child,
    );
  }
}
