import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesBoundInPage extends StatelessWidget {
  const CurvesBoundInPage({super.key});

  static const routeName = 'CurvesBoundIn';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(title: 'CurvesBoundIn', curve: Curves.bounceIn);
  }
}
