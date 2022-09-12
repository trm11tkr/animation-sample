import 'package:animations_sample/pages/curve/curve_bound_out.dart';
import 'package:animations_sample/pages/curve/curve_decelerate.dart';
import 'package:animations_sample/pages/curve/curves_bound_in.dart';
import 'package:animations_sample/pages/curve/curves_bound_in_out.dart';
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
        ],
      ),
    );
  }
}
