import 'package:animations_sample/gen/assets.gen.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

/// Positioned Widgetのアニメーション

class AnimatedPositionedPage extends StatefulWidget {
  const AnimatedPositionedPage({super.key});

  static const routeName = 'animatedPositioned';

  @override
  State<AnimatedPositionedPage> createState() => _AnimatedPositionedPageState();
}

class _AnimatedPositionedPageState extends State<AnimatedPositionedPage> {
  var _shrunken = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'animatedPositioned',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _shrunken = !_shrunken;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      child: Center(
        child: Stack(
          children: [
            Assets.images.hippoGrey.image(),
            AnimatedPositioned(
              top: 0,
              left: 0,
              width: _shrunken ? 50 : 300,
              duration: const Duration(milliseconds: 500),
              child: Assets.images.hippo.image(),
            )
          ],
        ),
      ),
    );
  }
}
