import 'package:animations_sample/pages/implicitly_animated/implicitly_animated_page.dart';
import 'package:animations_sample/pages/transition/transition_page.dart';
import 'package:animations_sample/widgets/app_list_tile.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'TransitionPage',
      child: ListView(
        children: const [
          AppListTile(
            title: 'ImplicitlyAnimated',
            nextRouteName: ImplicitlyAnimatedPage.routeName,
          ),
          AppListTile(
            title: 'Transition',
            nextRouteName: TransitionPage.routeName,
          ),
        ],
      ),
    );
  }
}
