import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInOutPage extends StatelessWidget {
  const CurvesEaseInOutPage({super.key});

  static const routeName = 'CurvesEaseInOut';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInOut',
      curve: Curves.easeInOut,
    );
  }
}
