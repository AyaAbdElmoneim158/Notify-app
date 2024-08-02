import 'package:app/styles/dimensions.dart';
import 'package:flutter/material.dart';

class ButtonApp extends StatelessWidget {
  final Color color;
  final VoidCallback onPressed;
  final String text;

  const ButtonApp({
    super.key,
    required this.color,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(13),
      ),
      color: color,
      onPressed: onPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.height30 * 3,
          vertical: context.height15,
        ),
        child: Text(
          text,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
