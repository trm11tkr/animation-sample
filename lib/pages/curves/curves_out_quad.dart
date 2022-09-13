import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseOutQuadPage extends StatelessWidget {
  const CurvesEaseOutQuadPage({super.key});

  static const routeName = 'CurvesEaseOutQuad';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseOutQuad',
      curve: Curves.easeOutQuad,
    );
  }
}
