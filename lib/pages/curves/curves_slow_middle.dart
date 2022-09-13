import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesSlowMiddlePage extends StatelessWidget {
  const CurvesSlowMiddlePage({super.key});

  static const routeName = 'CurvesSlowMiddle';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesSlowMiddle',
      curve: Curves.slowMiddle,
    );
  }
}
