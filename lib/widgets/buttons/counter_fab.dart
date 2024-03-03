import 'package:flutter/material.dart';

class CounterFAB extends StatelessWidget {
  final VoidCallback onPressed;
  final Icon icon;

  const CounterFAB({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // heroTag property is important, since not putting it causes an error when moving from a screen to another. Giving null value to heroTag is okay, but for uniqueness, giving key value is more appropiate. More info: https://stackoverflow.com/questions/51125024/there-are-multiple-heroes-that-share-the-same-tag-within-a-subtre
      heroTag: key,
      enableFeedback: true,
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: icon,
    );
  }
}
