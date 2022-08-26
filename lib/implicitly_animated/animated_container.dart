import 'package:animations_sample/widgets/animation_object.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

/// AnimatedAlignmentに加えてcolorや余白などにアニメーションをつけることができる。

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

  static const _colors = [
    Colors.red,
    Colors.yellow,
    Colors.green,
    Colors.purple,
  ];

  int _index = 0;

  AlignmentGeometry get _alignment => _alignments[_index % _alignments.length];
  Color get _color => _colors[_index % _colors.length];

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'AnimatedContainer',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _index++;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      child: AnimatedContainer(
        alignment: _alignment,
        color: _color,
        // ここの3とか4は、_alignmentsやcolorsのリストの長さによって変える。
        // 今回は可視性からハード値を入れている。
        margin: EdgeInsets.all(20 * ((3 - _index).toDouble() % 4)),
        padding: EdgeInsets.all(20 * ((3 - _index).toDouble() % 4)),
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        child: const AnimationObject(),
      ),
    );
  }
}
