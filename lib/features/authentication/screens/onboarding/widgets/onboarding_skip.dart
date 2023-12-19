import 'package:diaspay_base/features/authentication/controllers/onboarding_controller.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';


class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Passed Controller
    final controller = OnBoardingController.instance;

    return Positioned(
        top: TDeviceUtils.getAppBarHeight(),
        right: TSizes.defaultSpace,
        child: TextButton(
          //Back to skip page
          onPressed: controller.skipPage,
          //End Back to skip page

          child: const Text('Skip'),
        ));
  }
}

