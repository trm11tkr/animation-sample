import 'package:animations_sample/gen/fonts.gen.dart';
import 'package:animations_sample/widgets/app_scaffold.dart';
import 'package:flutter/material.dart';

/// AnimatedAlignmentに加えてcolorや余白などにアニメーションをつけることができる。

class AnimatedDefaultTextStylePage extends StatefulWidget {
  const AnimatedDefaultTextStylePage({super.key});

  static const routeName = 'animatedDefaultTextStyle';

  @override
  State<AnimatedDefaultTextStylePage> createState() =>
      _AnimatedDefaultTextStylePageState();
}

class _AnimatedDefaultTextStylePageState
    extends State<AnimatedDefaultTextStylePage> {
  int _index = 0;

  TextStyle get _textStyle {
    switch (_index % 4) {
      case 0:
        return Theme.of(context).textTheme.headline1!.copyWith(
              color: Colors.red,
              fontFamily: FontFamily.alumniSansPinstripe,
            );
      case 1:
        return Theme.of(context).textTheme.headline2!.copyWith(
              color: Colors.green,
              fontFamily: FontFamily.alumniSansPinstripe,
              fontStyle: FontStyle.italic,
            );

      case 2:
        return Theme.of(context).textTheme.headline3!.copyWith(
              color: Colors.blue,
              fontFamily: FontFamily.mPLUSRounded1c,
            );

      case 3:
        return Theme.of(context).textTheme.headline4!.copyWith(
              color: Colors.yellow,
              fontFamily: FontFamily.mPLUSRounded1c,
              fontWeight: FontWeight.bold,
            );
    }
    assert(false);
    return const TextStyle();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      title: 'animatedDefaultTextStyle',
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _index++;
          });
        },
        child: const Icon(Icons.play_arrow),
      ),
      child: Center(
        child: AnimatedDefaultTextStyle(
          style: _textStyle,
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 500),
          child: const Text('flutter'),
        ),
      ),
    );
  }
}
