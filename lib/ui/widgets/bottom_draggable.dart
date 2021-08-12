import 'package:flutter/material.dart';
import 'package:taxiye_passenger/shared/theme/app_theme.dart';

/// A draggable scrollable sheet with a handle.
class BottomDraggable extends StatelessWidget {
  /// A sliver list of children to be placed as the body of the scrollable sheet.
  final List<Widget> slivers;

  /// The maximum fractional value of the parent container's height to use when
  /// displaying the widget.
  ///
  /// The default value is `1.0`.
  final double maxChildSize;

  /// The initial fractional value of the parent container's height to use when
  /// displaying the widget.
  ///
  /// The default value is `0.09`.
  final double initialChildSize;

  /// The minimum fractional value of the parent container's height to use when
  /// displaying the widget.
  ///
  /// The default value is `0.08`.
  /// @TODO make it default to the size of the handle
  final double minChildSize;

  /// Creates a widget that can be dragged and scrolled in a single gesture.
  ///
  /// places a sticky handle on top and takes as content a list of slivers
  const BottomDraggable({
    Key? key,
    this.slivers = const <Widget>[],
    this.minChildSize = 0.05,
    this.maxChildSize = 1.0,
    this.initialChildSize = 0.06,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: initialChildSize,
      minChildSize: minChildSize,
      maxChildSize: maxChildSize,
      builder: (context, scrollController) {
        return Container(
          decoration: AppTheme.bottomSheetDecoration,
          child: CustomScrollView(
            controller: scrollController,
            slivers: [
              const SliverAppBar(
                pinned: true,
                floating: true,
                automaticallyImplyLeading: false,
                centerTitle: true,
                title: Icon(Icons.expand_less),
                toolbarHeight: 40,
                backgroundColor: Colors.white,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50),
                  ),
                ),
              ),
              for (Widget sliver in slivers) sliver,
            ],
          ),
        );
      },
    );
  }
}
