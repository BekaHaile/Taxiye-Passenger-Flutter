import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

class AddNew extends StatelessWidget {
  const AddNew({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: AppTheme.shadowColor.withOpacity(0.12),
              spreadRadius: 0,
              blurRadius: 10,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0),
          child: Row(
            children: [
              const Icon(Icons.add),
              const SizedBox(width: 14.0),
              Text(
                title,
                style: AppTheme.title2,
              )
            ],
          ),
        ),
      ),
    );
  }
}
