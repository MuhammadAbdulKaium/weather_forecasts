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
            Color(0xFF182140),
            Color(0xFF5742a1),
            Color(0xFF8e4aac),
          ],
          stops: [0.005, 0.71, 1.0],
        ),
      ),
      child: child,
    );
  }
}
