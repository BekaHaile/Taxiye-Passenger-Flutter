import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({
    Key? key,
    required this.text,
    this.width,
    this.height = 45.0,
    this.textStyle,
    this.color = AppTheme.primaryColor,
    this.leadingIcon,
    this.trailingIcon,
    this.elevation = 2.0,
    this.child,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final double? width;
  final double height;
  final Color? color;
  final TextStyle? textStyle;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final double elevation;
  final Widget? child;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.maxFinite,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: elevation,
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(45.0),
            // side: const BorderSide(color: AppTheme.primaryColor),
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
                style: textStyle ??
                    const TextStyle(
                      fontFamily: 'SegoeUi',
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
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
