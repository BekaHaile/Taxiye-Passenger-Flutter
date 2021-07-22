import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

class ShadowButton extends StatelessWidget {
  const ShadowButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 150.0,
        height: 45.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          boxShadow: [
            BoxShadow(
              color: AppTheme.shadowColor,
              spreadRadius: 2,
              blurRadius: 5,
              offset: const Offset(0, 1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14.0,
              color: AppTheme.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
