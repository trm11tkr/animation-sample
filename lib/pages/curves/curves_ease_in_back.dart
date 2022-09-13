import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesEaseInBackPage extends StatelessWidget {
  const CurvesEaseInBackPage({super.key});

  static const routeName = 'CurvesEaseInBack';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesEaseInBack',
      curve: Curves.easeInBack,
    );
  }
}
