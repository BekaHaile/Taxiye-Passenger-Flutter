import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/common_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';
import 'package:taxiye_passenger/ui/widgets/shadow_button.dart';
import 'package:get/get.dart';

class CustomTabHeader extends StatelessWidget {
  const CustomTabHeader({
    Key? key,
    required this.tabTitles,
    required this.selectedTitle,
    required this.onSelectTab,
  }) : super(key: key);

  final List<TabTitle> tabTitles;
  final String selectedTitle;
  final Function(TabTitle tabTitle) onSelectTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppTheme.lightSilverColor,
        borderRadius: BorderRadius.all(Radius.circular(45.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...tabTitles.map((tabTitle) => TabTile(
                tabTitle: tabTitle,
                isActive: selectedTitle == tabTitle.text,
                onTap: () => onSelectTab(tabTitle))),
          ],
        ),
      ),
    );
  }
}

class TabTile extends StatelessWidget {
  const TabTile({
    Key? key,
    required this.tabTitle,
    required this.isActive,
    required this.onTap,
  }) : super(key: key);

  final TabTitle tabTitle;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return ShadowButton(
        height: 40,
        color: isActive ? AppTheme.primaryColor : Colors.transparent,
        decoration: !isActive
            ? const BoxDecoration(
                color: AppTheme.lightSilverColor,
              )
            : null,
        text: tabTitle.text.tr,
        textStyle: AppTheme.title.copyWith(
          color: isActive ? Colors.white : AppTheme.darkColor,
          fontSize: 14.0,
        ),
        leadingIcon: isActive ? Icon(tabTitle.icon, color: Colors.white) : null,
        onPressed: onTap);
  }
}
