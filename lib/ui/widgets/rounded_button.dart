import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    this.width,
    this.color = AppTheme.primaryColor,
    this.leadingIcon,
    this.trailingIcon,
    this.textColor = Colors.white,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final double? width;
  final Color color, textColor;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.maxFinite,
      height: 45.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45.0),
            side: const BorderSide(color: AppTheme.primaryColor),
          ),
        ),
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (leadingIcon != null) Icon(leadingIcon),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                text,
                style: TextStyle(
                  fontFamily: 'SegoeUi',
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                  color: textColor,
                ),
              ),
            ),
            if (trailingIcon != null)
              Icon(
                trailingIcon,
                size: 20.0,
              )
          ],
        ),
      ),
    );
  }
}
