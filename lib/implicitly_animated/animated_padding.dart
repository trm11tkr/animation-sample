import 'package:animations_sample/gen/assets.gen.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

/// AnimatedContainerでも可能だが、Paddingが変化するだけの
/// アニメーションの際はパフォーマンス面からこちらを使う.

class AnimatedPaddingPage extends StatefulWidget {
  const AnimatedPaddingPage({super.key});

  static const routeName = 'animatedPadding';

  @override
  State<AnimatedPaddingPage> createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  var _hasPadding = false;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'animatedPadding',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _hasPadding = !_hasPadding;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      child: Center(
        child: AnimatedPadding(
          padding: EdgeInsets.all(_hasPadding ? 50 : 0),
          duration: const Duration(milliseconds: 500),
          child: Assets.images.hippo.image(),
        ),
      ),
    );
  }
}
