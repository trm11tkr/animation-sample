import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInCubicPage extends StatelessWidget {
  const CurvesEaseInCubicPage({super.key});

  static const routeName = 'CurvesEaseInCubic';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInCubic',
      curve: Curves.easeInCubic,
    );
  }
}
