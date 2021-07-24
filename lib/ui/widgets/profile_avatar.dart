import 'dart:io';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/freezed_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/utils/functions.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
    this.name,
    this.pickedFilePath,
    this.onPickCallback,
    this.images,
    this.radius = 40.0,
    this.initialsFontSize = 20.0,
    this.canEdit = true,
    this.onDeleteCallback,
  }) : super(key: key);

  final String? name;
  final String? pickedFilePath;
  final VoidCallback? onPickCallback;
  final List<Files>? images;
  final double radius;

  final bool canEdit;
  final double initialsFontSize;
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
                  (images?.isNotEmpty ?? false)) {
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
                : images?.isNotEmpty ?? false
                    ? CachedNetworkImage(
                        imageUrl: images![images!.length - 1].url,
                        imageBuilder: (context, imageProvider) => CircleAvatar(
                          radius: radius,
                          backgroundImage: imageProvider,
                        ),
                        progressIndicatorBuilder:
                            (context, url, downloadProgress) =>
                                CircularProgressIndicator(
                                    value: downloadProgress.progress),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
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
                            child: const Icon(Icons.person, size: 55.0),
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
