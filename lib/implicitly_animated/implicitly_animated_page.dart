import 'package:animations_sample/implicitly_animated/animated_align_page.dart';
import 'package:animations_sample/widgets/app_list_tile.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class ImplicitlyAnimatedPage extends StatelessWidget {
  const ImplicitlyAnimatedPage({super.key});

  static const routeName = 'implicitlyAnimated';

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'ImplicitlyAnimated',
      child: ListView(
        children: const [
          AppListTile(
            title: 'animatedAlign',
            nextRouteName: AnimatedAlignPage.routeName,
          ),
        ],
      ),
    );
  }
}
