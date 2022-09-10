import 'package:animations_sample/pages/transition/decorated_box_transition.dart';
import 'package:animations_sample/pages/transition/default_text_style_transition.dart';
import 'package:animations_sample/pages/transition/fade_transition.dart';
import 'package:animations_sample/pages/transition/positioned_transition.dart';
import 'package:animations_sample/widgets/app_list_tile.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

import 'align_transition.dart';

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
        ],
      ),
    );
  }
}
