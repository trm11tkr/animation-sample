import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInOutSinePage extends StatelessWidget {
  const CurvesEaseInOutSinePage({super.key});

  static const routeName = 'CurvesEaseInOutSine';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInOutSine',
      curve: Curves.easeInOutSine,
    );
  }
}
