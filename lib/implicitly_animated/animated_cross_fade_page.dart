import 'package:animations_sample/gen/assets.gen.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

/// AnimatedXxxという名前だが、ImplicitlyAnimatedWidgetを継承していないWidget
/// childを持たずに、firstとsecondのWidgetを設置し、クロスフェードで滑らかに繋いでくれる

/// 注意!!! 2つのWidgetのサイズが異なると、不自然なアニメーションになる。

class AnimatedCrossFadePage extends StatefulWidget {
  const AnimatedCrossFadePage({super.key});

  static const routeName = 'animatedCrossFade';

  @override
  State<AnimatedCrossFadePage> createState() => _AnimatedCrossFadePageState();
}

class _AnimatedCrossFadePageState extends State<AnimatedCrossFadePage> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'AnimatedCrossFade',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _showFirst = !_showFirst;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      child: AnimatedCrossFade(
        firstChild: Assets.images.hippo.image(),
        secondChild: Assets.images.hippoGrey.image(),
        crossFadeState:
            _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(milliseconds: 1000),
      ),
    );
  }
}
