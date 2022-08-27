import 'package:animations_sample/widgets/animation_object.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

/// 指定したAlignmentに向かって滑らかにオブジェクトを移動させる

class AnimatedAlignPage extends StatefulWidget {
  const AnimatedAlignPage({super.key});

  static const routeName = 'animatedAlign';

  @override
  State<AnimatedAlignPage> createState() => _AnimatedAlignPageState();
}

class _AnimatedAlignPageState extends State<AnimatedAlignPage> {
  static const _alignments = [
    Alignment.topLeft,
    Alignment(0, -0.5),
    Alignment.topRight,
    Alignment.bottomRight,
    Alignment(0, 0.5),
    Alignment.bottomLeft,
  ];

  int index = 0;

  AlignmentGeometry get _alignment => _alignments[index % _alignments.length];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'AnimatedAlign',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            index++;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      child: AnimatedAlign(
        alignment: _alignment,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        child: const AnimationObject(),
      ),
    );
  }
}
