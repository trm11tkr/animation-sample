import 'package:animations_sample/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class AnimationObject extends StatelessWidget {
  const AnimationObject({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Assets.images.hippo.image(),
    );
  }
}
