import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

class ShadowButton extends StatelessWidget {
  const ShadowButton({
    Key? key,
    required this.text,
    this.width,
    this.height = 50.0,
    this.color = Colors.white,
    this.borderColor,
    this.textStyle,
    this.leadingIcon,
    this.trailingIcon,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final double? width;
  final double height;
  final Color color;
  final Color? borderColor;
  final TextStyle? textStyle;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(50.0)),
        border: Border.all(color: borderColor ?? Colors.transparent),
        boxShadow: [
          BoxShadow(
            color: AppTheme.shadowColor.withOpacity(0.12),
            spreadRadius: 0,
            blurRadius: 10,
            offset: const Offset(1, 0),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (leadingIcon != null) Icon(leadingIcon),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    text,
                    style: textStyle ??
                        AppTheme.title.copyWith(
                          fontSize: 14.0,
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
        ),
      ),
    );
  }
}