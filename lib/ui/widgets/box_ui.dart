import 'package:flutter/material.dart';

class BoxUI extends StatelessWidget {
  const BoxUI({
    Key? key,
    this.icon,
    this.onTapCallback,
  }) : super(key: key);

  final VoidCallback? onTapCallback;
  final IconData? icon;

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
                  color: Colors.grey.withOpacity(0.2),
                  offset: const Offset(1.1, 1.1),
                  blurRadius: 8.0),
            ],
          ),
          child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 35.0, vertical: 10.0),
              child: Icon(icon)),
        ),
      ),
    );
  }
}
