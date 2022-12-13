import 'package:flutter/material.dart';
import 'package:talkbox/app/shared/colors.dart';

class BusyButton extends StatelessWidget {
  const BusyButton({
    Key? key,
    required this.text,
    required this.fontSize, required this.onPress,
  }) : super(key: key);
  final String text;
  final double fontSize;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: Color(0XFF3E7FE0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 58, vertical: 16),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.w300,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
