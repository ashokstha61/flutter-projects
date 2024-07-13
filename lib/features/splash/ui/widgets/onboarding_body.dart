import 'package:ecommerce_app/common/assets.dart';
import 'package:ecommerce_app/common/services/shared_pref_services.dart';
import 'package:ecommerce_app/features/auth/ui/screens/login_page.dart';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:page_transition/page_transition.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            image: Image.asset(
              Assets.Onboarding1,
              height: 100,
            ),
            title: "Introduction 1",
            body: Faker().lorem.sentences(4).join(),
          ),
          PageViewModel(
            image: Image.asset(
              Assets.Onboarding2,
              height: 100,
            ),
            title: "Introduction 2",
            body: Faker().lorem.sentences(4).join(),
          ),
          PageViewModel(
            image: Image.asset(
              Assets.Onboarding3,
              height: 100,
            ),
            title: "Introduction 3",
            body: Faker().lorem.sentences(4).join(),
          ),
          PageViewModel(
            image: Image.asset(
              Assets.Onboarding4,
              height: 100,
            ),
            title: "Introduction 4",
            body: Faker().lorem.sentences(4).join(),
          ),
          PageViewModel(
            image: Image.asset(
              Assets.Onboarding5,
              height: 100,
            ),
            title: "Introduction 5",
            body: Faker().lorem.sentences(4).join(),
          ),
        ],
        showSkipButton: true,
        skip: const Text("Skip"),
        onSkip: () async {
          await SharedPrefServices.hasOpenedAppBefore();
          Navigator.of(context).pushAndRemoveUntil(
            PageTransition(
              child: LoginPage(),
              type: PageTransitionType.fade,
            ),
            (route) => false,
          );
        },
        next: const Text("Next"),
        done: const Text("Done"),
        onDone: () async {
          await SharedPrefServices.hasOpenedAppBefore();
          Navigator.of(context).pushAndRemoveUntil(
            PageTransition(
              child: LoginPage(),
              type: PageTransitionType.fade,
            ),
            (route) => false,
          );
        },
      ),
    );
  }
}
