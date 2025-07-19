import 'package:flutter/material.dart';

class GradientCard extends StatelessWidget {
  final Widget child;
  const GradientCard({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
            color: Color(0xFFF7CBFD),
            width: 1
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withValues(alpha: (0.25)),
              offset: Offset(0, 2),
              blurRadius: 4,
              spreadRadius: 1
          ),
        ],
        gradient: LinearGradient(
          colors: [
            Color(0xFF3E2D8F),
            Color(0xFF9D52AC),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomLeft,
        ),
      ),
      child: child,
    );
  }
}
