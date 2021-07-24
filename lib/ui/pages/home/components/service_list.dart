import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/ui/pages/home/components/service_tile.dart';
import 'package:taxiye_passenger/ui/pages/home/home_page.dart';

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
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: SizedBox(
        height: 45.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final HomeService service = services[index];
            return Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 3.0),
              child: ServiceTile(
                service: service,
                isActive: selectedService == service.title,
                onTap: () => onSelectService(service.title),
              ),
            );
          },
          itemCount: services.length,
        ),
      ),
    );
  }
}
