import 'package:animations_sample/implicitly_animated/animated_align_page.dart';
import 'package:animations_sample/implicitly_animated/animated_container.dart';
import 'package:animations_sample/implicitly_animated/animated_cross_fade_page.dart';
import 'package:animations_sample/implicitly_animated/implicitly_animated_page.dart';
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
      home: const ImplicitlyAnimatedPage(),
      routes: {
        ImplicitlyAnimatedPage.routeName: (context) =>
            const ImplicitlyAnimatedPage(),
        AnimatedAlignPage.routeName: (context) => const AnimatedAlignPage(),
        AnimatedContainerPage.routeName: (context) =>
            const AnimatedContainerPage(),
        AnimatedCrossFadePage.routeName: (context) =>
            const AnimatedCrossFadePage(),
      },
    );
  }
}
