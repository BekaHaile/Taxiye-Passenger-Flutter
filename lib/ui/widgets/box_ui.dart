import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

class BoxUI extends StatelessWidget {
  const BoxUI({
    Key? key,
    this.icon,
    this.onTapCallback,
  }) : super(key: key);

  final VoidCallback? onTapCallback;
  final Widget? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTapCallback,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(6.0)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: AppTheme.shadowColor.withOpacity(0.12),
                blurRadius: 10.0,
                spreadRadius: 0.0,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
              child: icon ?? SvgPicture.asset('assets/icons/facebook.svg')),
        ),
      ),
    );
  }
}
