import 'package:animations_sample/widgets/app_list_tile.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';
import 'index.dart';

/// ref: https://api.flutter.dev/flutter/animation/Curves-class.html

class CurvePage extends StatelessWidget {
  const CurvePage({super.key});

  static const routeName = 'CurvePage';
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'CurvePage',
      child: ListView(
        children: const [
          AppListTile(
            title: 'CurvesBoundIn',
            nextRouteName: CurvesBoundInPage.routeName,
          ),
          AppListTile(
            title: 'CurvesBoundInOut',
            nextRouteName: CurvesBoundInOutPage.routeName,
          ),
          AppListTile(
            title: 'CurvesBoundOut',
            nextRouteName: CurvesBoundOutPage.routeName,
          ),
          AppListTile(
            title: 'CurvesDecelerate',
            nextRouteName: CurvesDeceleratePage.routeName,
          ),
          AppListTile(
            title: 'CurvesEase',
            nextRouteName: CurvesEasePage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseIn',
            nextRouteName: CurvesEaseInPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseInSine',
            nextRouteName: CurvesEaseInSinePage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseInQuad',
            nextRouteName: CurvesEaseInQuadPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseCubic',
            nextRouteName: CurvesEaseInCubicPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseCubic',
            nextRouteName: CurvesEaseInQuartPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseQuint',
            nextRouteName: CurvesEaseInQuintPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseExpo',
            nextRouteName: CurvesEaseInExpoPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseCirc',
            nextRouteName: CurvesEaseInCircPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseBack',
            nextRouteName: CurvesEaseInBackPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseInOut',
            nextRouteName: CurvesEaseInOutPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseInOutSome',
            nextRouteName: CurvesEaseInOutSinePage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseInOutQuad',
            nextRouteName: CurvesEaseInOutQuadPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseInOutCubic',
            nextRouteName: CurvesEaseInOutCubicPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseInOutQuart',
            nextRouteName: CurvesEaseInOutQuartPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseInOutQuint',
            nextRouteName: CurvesEaseInOutQuintPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseInOutExpo',
            nextRouteName: CurvesEaseInOutExpoPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseInOutCirc',
            nextRouteName: CurvesEaseInOutCircPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseInOutBack',
            nextRouteName: CurvesEaseInOutBackPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseOut',
            nextRouteName: CurvesEaseOutPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseOutSine',
            nextRouteName: CurvesEaseOutSinePage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseOutQuad',
            nextRouteName: CurvesEaseOutQuadPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseOutCubic',
            nextRouteName: CurvesEaseOutCubicPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseOutQuart',
            nextRouteName: CurvesEaseOutQuintPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseOutExpo',
            nextRouteName: CurvesEaseOutExpoPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseOutCirc',
            nextRouteName: CurvesEaseOutCircPage.routeName,
          ),
          AppListTile(
            title: 'CurvesEaseOutBack',
            nextRouteName: CurvesEaseOutBackPage.routeName,
          ),
          AppListTile(
            title: 'CurvesElasticIn',
            nextRouteName: CurvesElasticInPage.routeName,
          ),
          AppListTile(
            title: 'CurvesElasticInOut',
            nextRouteName: CurvesElasticInOutPage.routeName,
          ),
          AppListTile(
            title: 'CurvesElasticOut',
            nextRouteName: CurvesElasticOutPage.routeName,
          ),
          AppListTile(
            title: 'CurvesElasticFastOutSlowIn',
            nextRouteName: CurvesFastOutSlowInPage.routeName,
          ),
          AppListTile(
            title: 'CurvesFastLinearToSlowEaseIn',
            nextRouteName: CurvesFastLinearToSlowEaseInPage.routeName,
          ),
          AppListTile(
            title: 'CurvesSlowMiddle',
            nextRouteName: CurvesSlowMiddlePage.routeName,
          ),
          AppListTile(
            title: 'CurvesLinear',
            nextRouteName: CurvesLinearPage.routeName,
          ),
        ],
      ),
    );
  }
}
