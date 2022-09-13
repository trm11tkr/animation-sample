import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseOutSinePage extends StatelessWidget {
  const CurvesEaseOutSinePage({super.key});

  static const routeName = 'CurvesEaseOutSine';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseOutSine',
      curve: Curves.easeOutSine,
    );
  }
}
