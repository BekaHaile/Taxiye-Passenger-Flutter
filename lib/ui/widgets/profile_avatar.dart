import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
    this.name,
    this.pickedFilePath,
    this.onPickCallback,
    this.imageUrl,
    this.radius = 40.0,
    this.initialsFontSize = 20.0,
    this.canEdit = true,
    this.iconSize = 55.0,
    this.onDeleteCallback,
  }) : super(key: key);

  final String? name;
  final String? pickedFilePath;
  final VoidCallback? onPickCallback;
  final String? imageUrl;
  final double radius;

  final bool canEdit;
  final double initialsFontSize;
  final double iconSize;
  final Function(Files image)? onDeleteCallback;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          GestureDetector(
            onTap: () {
              if ((pickedFilePath?.isNotEmpty ?? false) ||
                  (imageUrl?.isNotEmpty ?? false)) {
                // Todo: Show full image or other logic
                // Get.to(() => ShowFullImagePage(
                //       pickedFilePath: pickedFilePath,
                //       images: images?.reversed.toList(),
                //       showDelete: canEdit,
                //       onDeleteCallback: onDeleteCallback,
                //     ));
              }
            },
            child: pickedFilePath?.isNotEmpty ?? false
                ? CircleAvatar(
                    radius: radius,
                    backgroundImage: FileImage(File(pickedFilePath!)),
                  )
                : imageUrl?.isNotEmpty ?? false
                    ? CachedNetworkImage(
                        imageUrl: imageUrl!,
                        imageBuilder: (context, imageProvider) => CircleAvatar(
                          radius: radius,
                          backgroundImage: imageProvider,
                        ),
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                const SpinKitFadingCircle(
                                    color: Colors.white, size: 30),
                        // CircularProgressIndicator(
                        //     value: downloadProgress.progress),
                        errorWidget: (context, url, error) => CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: radius,
                            child: Icon(
                              Icons.person,
                              color: AppTheme.darkColor,
                              size: radius / 1.3,
                            )),
                      )
                    : name?.isNotEmpty ?? false
                        ? CircleAvatar(
                            radius: radius,
                            backgroundColor: Colors.white,
                            child: Text(
                              getInitials(name),
                              style: AppTheme.title
                                  .copyWith(fontSize: initialsFontSize),
                            ),
                          )
                        : CircleAvatar(
                            backgroundColor: AppTheme.lightSilverColor,
                            radius: radius,
                            // backgroundImage:
                            //     const AssetImage('assets/images/profile_placeholder.png'),
                            child: Icon(
                              Icons.person,
                              size: iconSize,
                              color: AppTheme.greyColor,
                            ),
                            // child: Image.asset(
                            //   'assets/images/profile_placeholder.png',
                            //   fit: BoxFit.fill,
                            // ),
                          ),
          ),
          if (canEdit)
            Positioned(
              bottom: -7.0,
              left: 0.0,
              right: 0.0,
              child: GestureDetector(
                onTap: onPickCallback,
                child: const CircleAvatar(
                  radius: 10.0,
                  backgroundColor: AppTheme.primaryColor,
                  child: Icon(
                    Icons.add,
                    size: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
