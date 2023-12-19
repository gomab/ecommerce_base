import 'package:diaspay_base/features/authentication/controllers/onboarding_controller.dart';
import 'package:diaspay_base/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:diaspay_base/features/authentication/screens/onboarding/widgets/onboarding_netx_button.dart';
import 'package:diaspay_base/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:diaspay_base/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:diaspay_base/utils/constants/image_strings.dart';
import 'package:diaspay_base/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// Onboarding screen to introduce users to the app.
class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Using Backend
    final controller = Get.put(OnBoardingController());

    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(

            // Start Backend : Passed a PageController
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            // -- End Backend : Passed a PageController

            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TTexts.onBoardingTitle1,
                subTitle: TTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TTexts.onBoardingTitle2,
                subTitle: TTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TTexts.onBoardingTitle3,
                subTitle: TTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnboardingSkip(),

          /// Dot Navigation SmoothPageIndicator
          const OnboardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}


