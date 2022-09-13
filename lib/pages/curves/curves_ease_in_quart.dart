import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInQuartPage extends StatelessWidget {
  const CurvesEaseInQuartPage({super.key});

  static const routeName = 'CurvesEaseInQuart';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInQuart',
      curve: Curves.easeInQuart,
    );
  }
}
