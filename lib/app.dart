import 'package:animations_sample/pages/curves/curves_page.dart';
import 'package:animations_sample/pages/curves/index.dart';
import 'package:animations_sample/pages/home_page.dart';
import 'package:animations_sample/pages/implicitly_animated/implicitly_animated_page.dart';
import 'package:animations_sample/pages/implicitly_animated/index.dart';
import 'package:animations_sample/pages/transition/index.dart';
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
        RotationTransitionPage.routeName: (context) =>
            const RotationTransitionPage(),
        ScaleTransitionPage.routeName: (context) => const ScaleTransitionPage(),
        SlideTransitionPage.routeName: (context) => const SlideTransitionPage(),
        CurvePage.routeName: (context) => const CurvePage(),
        CurvesBoundInPage.routeName: (context) => const CurvesBoundInPage(),
        CurvesBoundInOutPage.routeName: (context) =>
            const CurvesBoundInOutPage(),
        CurvesBoundOutPage.routeName: (context) => const CurvesBoundOutPage(),
        CurvesDeceleratePage.routeName: (context) =>
            const CurvesDeceleratePage(),
        CurvesEasePage.routeName: (context) => const CurvesEasePage(),
        CurvesEaseInPage.routeName: (context) => const CurvesEaseInPage(),
        CurvesEaseInSinePage.routeName: (context) =>
            const CurvesEaseInSinePage(),
        CurvesEaseInQuadPage.routeName: (context) =>
            const CurvesEaseInQuadPage(),
        CurvesEaseInCubicPage.routeName: (context) =>
            const CurvesEaseInCubicPage(),
        CurvesEaseInQuartPage.routeName: (context) =>
            const CurvesEaseInQuartPage(),
        CurvesEaseInQuintPage.routeName: (context) =>
            const CurvesEaseInQuintPage(),
        CurvesEaseInExpoPage.routeName: (context) =>
            const CurvesEaseInExpoPage(),
        CurvesEaseInCircPage.routeName: (context) =>
            const CurvesEaseInCircPage(),
        CurvesEaseInBackPage.routeName: (context) =>
            const CurvesEaseInBackPage(),
        CurvesEaseInOutPage.routeName: (context) => const CurvesEaseInOutPage(),
        CurvesEaseInOutQuadPage.routeName: (context) =>
            const CurvesEaseInOutSinePage(),
        CurvesEaseInOutSinePage.routeName: (context) =>
            const CurvesEaseInOutQuadPage(),
        CurvesEaseInOutCubicPage.routeName: (context) =>
            const CurvesEaseInOutCubicPage(),
        CurvesEaseInOutQuartPage.routeName: (context) =>
            const CurvesEaseInOutQuartPage(),
        CurvesEaseInOutQuintPage.routeName: (context) =>
            const CurvesEaseInOutQuintPage(),
        CurvesEaseInOutExpoPage.routeName: (context) =>
            const CurvesEaseInOutExpoPage(),
        CurvesEaseInOutCircPage.routeName: (context) =>
            const CurvesEaseInOutCircPage(),
        CurvesEaseInOutBackPage.routeName: (context) =>
            const CurvesEaseInOutBackPage(),
        CurvesEaseOutPage.routeName: (context) => const CurvesEaseOutPage(),
        CurvesEaseOutSinePage.routeName: (context) =>
            const CurvesEaseOutSinePage(),
        CurvesEaseOutQuadPage.routeName: (context) =>
            const CurvesEaseOutQuadPage(),
        CurvesEaseOutCubicPage.routeName: (context) =>
            const CurvesEaseOutCubicPage(),
        CurvesEaseOutQuartPage.routeName: (context) =>
            const CurvesEaseOutQuartPage(),
        CurvesEaseOutQuintPage.routeName: (context) =>
            const CurvesEaseOutQuintPage(),
        CurvesEaseOutExpoPage.routeName: (context) =>
            const CurvesEaseOutExpoPage(),
        CurvesEaseOutCircPage.routeName: (context) =>
            const CurvesEaseOutCircPage(),
        CurvesEaseOutBackPage.routeName: (context) =>
            const CurvesEaseOutBackPage(),
        CurvesElasticInPage.routeName: (context) => const CurvesElasticInPage(),
        CurvesElasticInOutPage.routeName: (context) =>
            const CurvesElasticInOutPage(),
        CurvesElasticOutPage.routeName: (context) =>
            const CurvesElasticOutPage(),
        CurvesFastOutSlowInPage.routeName: (context) =>
            const CurvesFastOutSlowInPage(),
        CurvesFastLinearToSlowEaseInPage.routeName: (context) =>
            const CurvesFastLinearToSlowEaseInPage(),
        CurvesSlowMiddlePage.routeName: (context) =>
            const CurvesSlowMiddlePage(),
        CurvesLinearPage.routeName: (context) => const CurvesLinearPage(),
      },
    );
  }
}
