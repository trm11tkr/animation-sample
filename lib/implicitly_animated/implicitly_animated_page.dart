import 'package:animations_sample/implicitly_animated/animated_align.dart';
import 'package:animations_sample/implicitly_animated/animated_container.dart';
import 'package:animations_sample/implicitly_animated/animated_cross_fade.dart';
import 'package:animations_sample/implicitly_animated/animated_default_text_style.dart';
import 'package:animations_sample/implicitly_animated/animated_icon.dart';
import 'package:animations_sample/implicitly_animated/animated_opacity.dart';
import 'package:animations_sample/implicitly_animated/animated_padding.dart';
import 'package:animations_sample/implicitly_animated/animated_physical_model.dart';
import 'package:animations_sample/implicitly_animated/animated_positioned.dart';
import 'package:animations_sample/implicitly_animated/animated_positioned_directional.dart';
import 'package:animations_sample/implicitly_animated/animated_theme.dart';
import 'package:animations_sample/implicitly_animated/hero.dart';
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
          AppListTile(
            title: 'animatedPhysicalModel',
            nextRouteName: AnimatedPhysicalModelPage.routeName,
          ),
          AppListTile(
            title: 'animatedPositioned',
            nextRouteName: AnimatedPositionedPage.routeName,
          ),
          AppListTile(
            title: 'animatedPositionedDirectional',
            nextRouteName: AnimatedPositionedDirectionalPage.routeName,
          ),
          AppListTile(
            title: 'animatedTheme',
            nextRouteName: AnimatedThemePage.routeName,
          ),
          AppListTile(
            title: 'AnimatedIcon',
            nextRouteName: AnimatedIconPage.routeName,
          ),
          AppListTile(
            title: 'Hero',
            nextRouteName: HeroPage.routeName,
          ),
        ],
      ),
    );
  }
}
