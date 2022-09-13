import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseOutBackPage extends StatelessWidget {
  const CurvesEaseOutBackPage({super.key});

  static const routeName = 'CurvesEaseOutBack';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseOutBack',
      curve: Curves.easeOutBack,
    );
  }
}
