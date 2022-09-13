import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInOutQuintPage extends StatelessWidget {
  const CurvesEaseInOutQuintPage({super.key});

  static const routeName = 'CurvesEaseInOutQuint';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInOutQuint',
      curve: Curves.easeInOutQuint,
    );
  }
}
