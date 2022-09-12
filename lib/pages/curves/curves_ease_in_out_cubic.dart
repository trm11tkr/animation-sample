import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInOutCubicPage extends StatelessWidget {
  const CurvesEaseInOutCubicPage({super.key});

  static const routeName = 'CurvesEaseInOutCubic';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInOutCubic',
      curve: Curves.easeInOutCubic,
    );
  }
}
