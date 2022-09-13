import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInSinePage extends StatelessWidget {
  const CurvesEaseInSinePage({super.key});

  static const routeName = 'CurvesEaseInSine';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInSine',
      curve: Curves.easeInSine,
    );
  }
}
