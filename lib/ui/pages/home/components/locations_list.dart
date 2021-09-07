import 'package:flutter/material.dart';
import 'package:taxiye_passenger/core/models/map_models.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

class LocationsList extends StatelessWidget {
  const LocationsList({
    Key? key,
    required this.suggestions,
    required this.onPickLocation,
  }) : super(key: key);

  final List<Suggestion> suggestions;
  final Function(Suggestion location) onPickLocation;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        Suggestion suggestion = suggestions[index];
        return ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
          title: Text(
            suggestion.description,
            style: AppTheme.title.copyWith(fontSize: 14.0),
          ),
          leading: const CircleAvatar(
            radius: 17.0,
            backgroundColor: AppTheme.lightGrey,
            child: Icon(
              Icons.location_on,
              size: 20.0,
              color: AppTheme.darkTextColor,
            ),
          ),
          trailing: const Icon(
            Icons.north_west,
            size: 20,
            color: AppTheme.darkTextColor,
          ),
          onTap: () => onPickLocation(suggestion),
        );
      },
      itemCount: suggestions.length,
      separatorBuilder: (context, index) {
        return const Divider(
          thickness: 1.5,
          color: AppTheme.greyColor4,
          indent: 56.0,
          endIndent: 16.0,
        );
      },
    );
  }
}
