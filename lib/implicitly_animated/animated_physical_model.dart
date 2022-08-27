import 'package:animations_sample/gen/assets.gen.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

/// elevation(影)をアニメーションによって制御できる。

class AnimatedPhysicalModelPage extends StatefulWidget {
  const AnimatedPhysicalModelPage({super.key});

  static const routeName = 'animatedPhysicalModel';

  @override
  State<AnimatedPhysicalModelPage> createState() =>
      _AnimatedPhysicalModelPageState();
}

class _AnimatedPhysicalModelPageState extends State<AnimatedPhysicalModelPage> {
  var _hasElevation = false;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'animatedPhysicalModel',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _hasElevation = !_hasElevation;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: AnimatedPhysicalModel(
            shape: BoxShape.rectangle,
            elevation: _hasElevation ? 16 : 0,
            color: Colors.purple,
            shadowColor: Colors.black,
            duration: const Duration(milliseconds: 500),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Assets.images.hippo.image(),
            ),
          ),
        ),
      ),
    );
  }
}
