import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInOutQuartPage extends StatelessWidget {
  const CurvesEaseInOutQuartPage({super.key});

  static const routeName = 'CurvesEaseInOutQuart';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInOutQuart',
      curve: Curves.easeInOutQuart,
    );
  }
}
