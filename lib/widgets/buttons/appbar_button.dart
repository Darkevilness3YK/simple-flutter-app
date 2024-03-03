import 'package:flutter/material.dart';

class AppBarButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon icon;

  const AppBarButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      enableFeedback: true,
      onPressed: onPressed,
      icon: icon,
    );
  }
}
