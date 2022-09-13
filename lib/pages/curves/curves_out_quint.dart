import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseOutQuintPage extends StatelessWidget {
  const CurvesEaseOutQuintPage({super.key});

  static const routeName = 'CurvesEaseOutQuint';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseOutQuint',
      curve: Curves.easeOutQuint,
    );
  }
}
