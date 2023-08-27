import 'package:flutter/material.dart';

void fadeNavigation(BuildContext context, Widget widget) {
  Navigator.push(
    context,
    PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        // Fade transition
        return FadeTransition(opacity: animation, child: child);
      },
      pageBuilder: (context, animation, secondaryAnimation) => widget,
    ),
  );
}
