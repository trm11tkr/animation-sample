import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseOutCubicPage extends StatelessWidget {
  const CurvesEaseOutCubicPage({super.key});

  static const routeName = 'CurvesEaseOutCubic';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseOutCubic',
      curve: Curves.easeOutCubic,
    );
  }
}
