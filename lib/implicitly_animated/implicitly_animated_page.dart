import 'package:animations_sample/implicitly_animated/animated_align.dart';
import 'package:animations_sample/implicitly_animated/animated_container.dart';
import 'package:animations_sample/implicitly_animated/animated_cross_fade.dart';
import 'package:animations_sample/implicitly_animated/animated_default_text_style.dart';
import 'package:animations_sample/implicitly_animated/animated_opacity.dart';
import 'package:animations_sample/implicitly_animated/animated_padding.dart';
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
          AppListTile(
            title: 'animatedContainer',
            nextRouteName: AnimatedContainerPage.routeName,
          ),
          AppListTile(
            title: 'animatedCrossFade',
            nextRouteName: AnimatedCrossFadePage.routeName,
          ),
          AppListTile(
            title: 'animatedDefaultTextStyle',
            nextRouteName: AnimatedDefaultTextStylePage.routeName,
          ),
          AppListTile(
            title: 'animatedOpacityPage',
            nextRouteName: AnimatedOpacityPage.routeName,
          ),
          AppListTile(
            title: 'animatedPaddingPage',
            nextRouteName: AnimatedPaddingPage.routeName,
          ),
        ],
      ),
    );
  }
}
