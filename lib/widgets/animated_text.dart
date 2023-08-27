import 'package:flutter/material.dart';

class AnimatedText extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Duration animationDuration;

  const AnimatedText({
    Key? key,
    required this.text,
    required this.style,
    this.animationDuration = const Duration(seconds: 1),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: animationDuration,
      builder: (context, value, child) {
        return Opacity(
          opacity: value,
          child: child,
        );
      },
      child: Text(
        text,
        style: style,
      ),
    );
  }
}
