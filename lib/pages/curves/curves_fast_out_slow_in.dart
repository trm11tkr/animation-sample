import 'package:animations_sample/pages/curves/curves_object.dart';
import 'package:flutter/material.dart';

class CurvesFastOutSlowInPage extends StatelessWidget {
  const CurvesFastOutSlowInPage({super.key});

  static const routeName = 'CurvesFastOutSlowIn';

  @override
  Widget build(BuildContext context) {
    return const CurveObject(
      title: 'CurvesFastOutSlowIn',
      curve: Curves.fastOutSlowIn,
    );
  }
}
