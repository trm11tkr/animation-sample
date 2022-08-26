import 'package:animations_sample/widgets/animation_object.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({super.key});

  static const routeName = 'animatedContainer';

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  static const _alignments = [
    Alignment.topLeft,
    Alignment.topRight,
    Alignment.bottomRight,
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
