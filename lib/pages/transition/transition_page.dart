import 'package:animations_sample/widgets/app_list_tile.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'index.dart';

class TransitionPage extends StatelessWidget {
  const TransitionPage({super.key});

  static const routeName = 'TransitionPage';
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'TransitionPage',
      child: ListView(
        children: const [
          AppListTile(
            title: 'AlignTransition',
            nextRouteName: AlignTransitionPage.routeName,
          ),
          AppListTile(
            title: 'DecoratedBoxTransition',
            nextRouteName: DecoratedBoxTransitionPage.routeName,
          ),
          AppListTile(
            title: ' DefaultTextStyleTransition',
            nextRouteName: DefaultTextStyleTransitionPage.routeName,
          ),
          AppListTile(
            title: ' FadeTransition',
            nextRouteName: FadeTransitionPage.routeName,
          ),
          AppListTile(
            title: 'PositionedTransition',
            nextRouteName: PositionedTransitionPage.routeName,
          ),
          AppListTile(
            title: 'RotationTransition',
            nextRouteName: RotationTransitionPage.routeName,
          ),
          AppListTile(
            title: 'ScaleTransition',
            nextRouteName: ScaleTransitionPage.routeName,
          ),
          AppListTile(
            title: 'SlideTransition',
            nextRouteName: SlideTransitionPage.routeName,
          ),
        ],
      ),
    );
  }
}
