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
      height: 50.0,
      decoration: const BoxDecoration(
        color: AppTheme.lightSilverColor,
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
        child: ListView.builder(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final TabTitle tab = tabTitles[index];
            return TabTile(
                tabTitle: tab,
                isActive: selectedTitle == tab.text,
                onTap: () => onSelectTab(tab));
          },
          itemCount: tabTitles.length,
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
        horzontalPadding: 5.0,
        color: isActive ? AppTheme.primaryColor : Colors.transparent,
        decoration: !isActive
            ? const BoxDecoration(
                color: AppTheme.lightSilverColor,
                borderRadius: BorderRadius.all(Radius.circular(50.0)))
            : null,
        text: tabTitle.text.tr,
        textStyle: AppTheme.title.copyWith(
          color: isActive ? Colors.white : AppTheme.darkColor,
          fontSize: 13.0,
        ),
        leadingIcon: isActive ? Icon(tabTitle.icon, color: Colors.white) : null,
        onPressed: onTap);
  }
}
