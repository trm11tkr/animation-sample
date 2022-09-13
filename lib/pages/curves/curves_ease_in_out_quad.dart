import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInOutQuadPage extends StatelessWidget {
  const CurvesEaseInOutQuadPage({super.key});

  static const routeName = 'CurvesEaseInOutQuad';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInOutQuad',
      curve: Curves.easeInOutQuad,
    );
  }
}
