import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxiye_passenger/core/enums/home_enums.dart';
import 'package:taxiye_passenger/shared/custom_icons.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/controllers/auth_controller.dart';
import 'package:taxiye_passenger/ui/pages/common/confirm_dialog.dart';
import 'package:taxiye_passenger/ui/widgets/logo_image.dart';
import 'package:taxiye_passenger/ui/widgets/profile_avatar.dart';

class HomeDrawer extends StatelessWidget {
  HomeDrawer(
      {Key? key,
      required this.screenIndex,
      required this.iconAnimationController,
      required this.callBackIndex})
      : super(key: key);

  final AnimationController iconAnimationController;
  final DrawerIndex screenIndex;
  final Function(DrawerIndex) callBackIndex;
  late List<DrawerList> drawerList;

  Future<List<DrawerList>> setDrawerListArray() async {
    drawerList = <DrawerList>[
      DrawerList(
        index: DrawerIndex.myWallet,
        title: 'my_wallet',
        subtitle: 'manage_your_wallet',
        icon: CustomIcons.wallet,
      ),
      DrawerList(
        index: DrawerIndex.promotions,
        title: 'promotions'.tr,
        subtitle: 'promotions_info',
        icon: CustomIcons.promotions,
      ),
      DrawerList(
        index: DrawerIndex.myDrivers,
        title: 'my_orders',
        subtitle: 'riview_orders',
        icon: CustomIcons.orders,
      ),
      DrawerList(
        index: DrawerIndex.myOrders,
        title: 'my_orders',
        subtitle: 'riview_orders',
        icon: CustomIcons.driver,
      ),
      DrawerList(
        index: DrawerIndex.paymentMethod,
        title: 'payment_method',
        subtitle: 'payment_info',
        icon: CustomIcons.payment,
      ),
      DrawerList(
        index: DrawerIndex.legals,
        title: 'legals'.tr,
        subtitle: 'legals_info',
        icon: CustomIcons.legals,
      ),
    ];

    return drawerList;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: setDrawerListArray(),
      builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
        if (!snapshot.hasData) {
          return const SizedBox();
        } else {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 20.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AnimatedBuilder(
                      animation: iconAnimationController,
                      builder: (BuildContext context, Widget? child) {
                        return ScaleTransition(
                          scale: AlwaysStoppedAnimation<double>(
                              1.0 - (iconAnimationController.value) * 0.2),
                          child: RotationTransition(
                            turns: AlwaysStoppedAnimation<double>(
                                Tween<double>(begin: 0.0, end: 24.0)
                                        .animate(CurvedAnimation(
                                            parent: iconAnimationController,
                                            curve: Curves.fastOutSlowIn))
                                        .value /
                                    360),
                            child: Container(
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                      color: AppTheme.shadowColor
                                          .withOpacity(0.25),
                                      offset: const Offset(0.0, 4.0),
                                      blurRadius: 8),
                                ],
                                border:
                                    Border.all(color: AppTheme.primaryColor),
                              ),
                              child: const ProfileAvatar(
                                  canEdit: false,
                                  radius: 40.0,
                                  name: 'Abel Girma'
                                  // name: controller.profile.firstName +
                                  //     ' ' +
                                  //     controller.profile.lastName,
                                  // pickedFilePath:
                                  //     controller.profileImage?.path ??
                                  //         '',
                                  // images: controller
                                  //     .profile?.profileImages,
                                  ),
                            ),
                          ),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 4.0),
                      child: Column(
                        children: [
                          Text(
                            'Diane Russel',
                            style: AppTheme.title.copyWith(fontSize: 16.0),
                          ),
                          Text('+251911399631',
                              style: AppTheme.body
                                  .copyWith(color: AppTheme.darkColor)),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                indent: 20.0,
                endIndent: 20.0,
                height: 1,
                color: AppTheme.greyColor.withOpacity(0.6),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 30.0),
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    padding: const EdgeInsets.all(0.0),
                    itemCount: drawerList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return drawerListTile(drawerList[index]);
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const LogoImage(
                          width: 65.0,
                          height: 30.0,
                        ),
                        Text(
                          'speak_real_person'.tr,
                          style: AppTheme.title.copyWith(fontSize: 14.0),
                        ),
                        Text(
                          'speak_person_info'.tr,
                          style: AppTheme.subtitle.copyWith(
                              fontSize: 12.0, color: AppTheme.darkColor),
                        ),
                      ],
                    ),
                    const CircleAvatar(
                        radius: 25.0,
                        backgroundColor: AppTheme.primaryColor,
                        child: Icon(
                          Icons.call,
                          size: 32.0,
                          color: Colors.white,
                        ))
                  ],
                ),
              ),
            ],
          );
        }
      },
    );
  }

  Widget drawerListTile(DrawerList listItem) {
    return Stack(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 2.0),
          horizontalTitleGap: 0.0,
          leading: Align(
            widthFactor: 1.0,
            alignment: Alignment.centerLeft,
            child: Icon(listItem.icon,
                size: 24.0,
                color: screenIndex == listItem.index
                    ? AppTheme.primaryColor
                    : AppTheme.darkColor),
          ),
          title: Text(
            listItem.title.tr,
            style: AppTheme.title.copyWith(
              fontSize: 14.0,
              color: screenIndex == listItem.index
                  ? AppTheme.primaryColor
                  : AppTheme.darkColor,
            ),
          ),
          subtitle: Text(
            listItem.subtitle?.tr ?? '',
            style: AppTheme.subtitle,
          ),
          trailing: const Icon(
            Icons.chevron_right,
            color: AppTheme.darkTextColor,
          ),
          onTap: () => navigationtoScreen(listItem.index),
        ),
      ],
    );
  }

  Future<void> navigationtoScreen(DrawerIndex indexScreen) async {
    callBackIndex(indexScreen);
  }
}

class DrawerList {
  DrawerList({
    required this.index,
    required this.title,
    this.subtitle,
    this.icon,
  });

  DrawerIndex index;
  String title;
  String? subtitle;
  IconData? icon;
}
