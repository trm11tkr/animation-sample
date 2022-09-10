import 'package:animations_sample/widgets/app_list_tile.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

import 'align_transition_page.dart';

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
        ],
      ),
    );
  }
}
