import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/profile_avatar.dart';

class OrderTile extends StatelessWidget {
  const OrderTile({
    Key? key,
    required this.order,
    required this.onTap,
  }) : super(key: key);

  final Order order;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            boxShadow: [
              BoxShadow(
                color: AppTheme.shadowColor.withOpacity(0.2),
                spreadRadius: 0,
                blurRadius: 10,
                offset: const Offset(1, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Today 12:45 PM',
                      style: AppTheme.title.copyWith(fontSize: 14.0),
                    ),
                    const Text('157.00 ETB',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w700,
                          color: AppTheme.primaryColor,
                        ))
                  ],
                ),
                const SizedBox(height: 10.0),
                Image.asset('assets/images/order_map.png'),
                const SizedBox(height: 10.0),
                IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              style: AppTheme.body.copyWith(fontSize: 12.0),
                              children: const [
                                WidgetSpan(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Icon(
                                      Icons.location_on,
                                      size: 15.0,
                                      color: AppTheme.greenColor,
                                    ),
                                  ),
                                ),
                                TextSpan(text: 'Kazanchis, Tito Street'),
                              ],
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          RichText(
                            text: TextSpan(
                              style: AppTheme.body.copyWith(fontSize: 12.0),
                              children: const [
                                WidgetSpan(
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 4.0),
                                    child: Icon(
                                      Icons.flag,
                                      size: 15.0,
                                      color: AppTheme.primaryColor,
                                    ),
                                  ),
                                ),
                                TextSpan(text: 'Alemayehu Building, Mauri...'),
                              ],
                            ),
                          )
                        ],
                      ),
                      const VerticalDivider(
                        thickness: 1,
                        width: 20,
                        color: AppTheme.greyColor3,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  order.driver?.name ?? '',
                                  style: AppTheme.body.copyWith(fontSize: 12.0),
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ),
                            Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border:
                                    Border.all(color: AppTheme.primaryColor),
                              ),
                              child: ProfileAvatar(
                                  canEdit: false,
                                  radius: 20.0,
                                  name: order.driver?.name ?? ''),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
