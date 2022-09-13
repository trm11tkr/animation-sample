import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseOutPage extends StatelessWidget {
  const CurvesEaseOutPage({super.key});

  static const routeName = 'CurvesEaseOut';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseOut',
      curve: Curves.easeOut,
    );
  }
}
