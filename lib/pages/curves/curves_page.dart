import 'package:animations_sample/pages/curves/curves_bound_in.dart';
import 'package:animations_sample/pages/curves/curves_bound_in_out.dart';
import 'package:animations_sample/pages/curves/curves_bound_out.dart';
import 'package:animations_sample/pages/curves/curves_decelerate.dart';
import 'package:animations_sample/pages/curves/curves_ease.dart';
import 'package:animations_sample/pages/curves/curves_ease_in.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_back.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_circ.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_cubic.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_expo.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_out.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_out_back.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_out_circ.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_out_cubic.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_out_expo.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_out_quad.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_out_quart.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_out_quint.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_out_sine.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_quad.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_quart.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_quint.dart';
import 'package:animations_sample/pages/curves/curves_ease_in_sine.dart';
import 'package:animations_sample/pages/curves/curves_out.dart';
import 'package:animations_sample/pages/curves/curves_out_back.dart';
import 'package:animations_sample/pages/curves/curves_out_circ.dart';
import 'package:animations_sample/pages/curves/curves_out_cubic.dart';
import 'package:animations_sample/pages/curves/curves_out_expo.dart';
import 'package:animations_sample/pages/curves/curves_out_quad.dart';
import 'package:animations_sample/pages/curves/curves_out_quint.dart';
import 'package:animations_sample/pages/curves/curves_out_sine.dart';
import 'package:animations_sample/widgets/app_list_tile.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

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
        ],
      ),
    );
  }
}
