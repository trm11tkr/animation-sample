import 'package:animations_sample/pages//implicitly_animated/animated_align.dart';
import 'package:animations_sample/pages//implicitly_animated/animated_container.dart';
import 'package:animations_sample/pages//implicitly_animated/animated_cross_fade.dart';
import 'package:animations_sample/pages//implicitly_animated/animated_default_text_style.dart';
import 'package:animations_sample/pages//implicitly_animated/animated_icon.dart';
import 'package:animations_sample/pages//implicitly_animated/animated_opacity.dart';
import 'package:animations_sample/pages//implicitly_animated/animated_padding.dart';
import 'package:animations_sample/pages//implicitly_animated/animated_physical_model.dart';
import 'package:animations_sample/pages//implicitly_animated/animated_positioned.dart';
import 'package:animations_sample/pages//implicitly_animated/animated_positioned_directional.dart';
import 'package:animations_sample/pages//implicitly_animated/animated_theme.dart';
import 'package:animations_sample/pages//implicitly_animated/hero.dart';
import 'package:animations_sample/pages//implicitly_animated/implicitly_animated_page.dart';
import 'package:animations_sample/pages/home_page.dart';
import 'package:animations_sample/pages/transition/align_transition.dart';
import 'package:animations_sample/pages/transition/decorated_box_transition.dart';
import 'package:animations_sample/pages/transition/default_text_style_transition.dart';
import 'package:animations_sample/pages/transition/fade_transition.dart';
import 'package:animations_sample/pages/transition/positioned_transition.dart';
import 'package:animations_sample/pages/transition/transition_page.dart';
import 'package:flutter/material.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animation Sample',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      home: const HomePage(),
      routes: {
        ImplicitlyAnimatedPage.routeName: (context) =>
            const ImplicitlyAnimatedPage(),
        AnimatedAlignPage.routeName: (context) => const AnimatedAlignPage(),
        AnimatedContainerPage.routeName: (context) =>
            const AnimatedContainerPage(),
        AnimatedCrossFadePage.routeName: (context) =>
            const AnimatedCrossFadePage(),
        AnimatedDefaultTextStylePage.routeName: (context) =>
            const AnimatedDefaultTextStylePage(),
        AnimatedOpacityPage.routeName: (context) => const AnimatedOpacityPage(),
        AnimatedPaddingPage.routeName: (context) => const AnimatedPaddingPage(),
        AnimatedPhysicalModelPage.routeName: (context) =>
            const AnimatedPhysicalModelPage(),
        AnimatedPositionedPage.routeName: (context) =>
            const AnimatedPositionedPage(),
        AnimatedPositionedDirectionalPage.routeName: (context) =>
            const AnimatedPositionedDirectionalPage(),
        AnimatedThemePage.routeName: (context) => const AnimatedThemePage(),
        AnimatedIconPage.routeName: (context) => const AnimatedIconPage(),
        HeroPage.routeName: (context) => const HeroPage(),
        TransitionPage.routeName: (context) => const TransitionPage(),
        AlignTransitionPage.routeName: (context) => const AlignTransitionPage(),
        DecoratedBoxTransitionPage.routeName: (context) =>
            const DecoratedBoxTransitionPage(),
        DefaultTextStyleTransitionPage.routeName: (context) =>
            const DefaultTextStyleTransitionPage(),
        FadeTransitionPage.routeName: (context) => const FadeTransitionPage(),
        PositionedTransitionPage.routeName: (context) =>
            const PositionedTransitionPage(),
      },
    );
  }
}
