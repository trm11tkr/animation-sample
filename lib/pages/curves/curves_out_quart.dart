import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseOutQuartPage extends StatelessWidget {
  const CurvesEaseOutQuartPage({super.key});

  static const routeName = 'CurvesEaseOutQuart';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseOutQuart',
      curve: Curves.easeOutQuart,
    );
  }
}
