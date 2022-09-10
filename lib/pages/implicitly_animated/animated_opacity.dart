import 'package:animations_sample/gen/assets.gen.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

/// 透明度を滑らかに変化させる。

class AnimatedOpacityPage extends StatefulWidget {
  const AnimatedOpacityPage({super.key});

  static const routeName = 'animatedOpacity';

  @override
  State<AnimatedOpacityPage> createState() => _AnimatedOpacityPageState();
}

class _AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  var _opaque = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'animatedOpacity',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _opaque = !_opaque;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      child: AnimatedOpacity(
        opacity: _opaque ? 1 : 0.5,
        duration: const Duration(milliseconds: 500),
        child: Assets.images.hippo.image(),
      ),
    );
  }
}
