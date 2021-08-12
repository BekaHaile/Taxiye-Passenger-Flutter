import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/ui/pages/home/home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:get/get.dart';

class ServiceList extends StatelessWidget {
  const ServiceList({
    Key? key,
    required this.services,
    required this.selectedService,
    required this.onSelectService,
  }) : super(key: key);

  final List<HomeService> services;
  final HomeServiceIndex selectedService;
  final Function(HomeServiceIndex selectedService) onSelectService;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          final HomeService service = services[index];
          return Padding(
            padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 15.0),
            child: ServiceTile(
              service: service,
              isActive: selectedService == service.title,
              onTap: () => onSelectService(service.title),
            ),
          );
        },
        itemCount: services.length,
      ),
    );
  }
}

class ServiceTile extends StatelessWidget {
  const ServiceTile({
    Key? key,
    required this.service,
    required this.onTap,
    this.isActive = false,
  }) : super(key: key);

  final HomeService service;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 42.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(50.0)),
          boxShadow: [
            BoxShadow(
              color: AppTheme.shadowColor.withOpacity(0.2),
              spreadRadius: 0,
              blurRadius: 6,
              offset: const Offset(1, 3),
            ),
          ],
          border: Border.all(
              color: isActive ? AppTheme.primaryColor : Colors.transparent,
              width: 2.0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 4.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                service.icon,
                size: 20.0,
                color: AppTheme.darkTextColor,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Text(
                  describeEnum(service.title).tr,
                  style: AppTheme.title.copyWith(fontSize: 14.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
