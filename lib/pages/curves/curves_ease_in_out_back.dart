import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInOutBackPage extends StatelessWidget {
  const CurvesEaseInOutBackPage({super.key});

  static const routeName = 'CurvesEaseInOutBack';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInOutBack',
      curve: Curves.easeInOutBack,
    );
  }
}
