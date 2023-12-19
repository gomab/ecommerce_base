import 'package:diaspay_base/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';


class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Backend passed controller
    final controller = OnBoardingController.instance;
    // End backend passed controller

    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
        bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
        left: TSizes.defaultSpace,
        child: SmoothPageIndicator(

          // Backend passed button
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          // End Backend passed button

          count: 3,
          effect: ExpandingDotsEffect(
              activeDotColor: dark ? TColors.light: TColors.dark, dotHeight: 6),
        ));
  }
}