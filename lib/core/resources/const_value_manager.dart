import 'package:flutter/material.dart';

import '../../model/onbourding_page_model.dart';
import 'asset_manager.dart';
import 'context_extensions.dart';

class ConstValueManager {
  static List<TestOnBoardingModel> listTestOnBoardingModel(
    BuildContext context,
  ) {
    return [
    TestOnBoardingModel(
      title: context.translation.t1,
      subTitle: context.translation.sub1,
    ),
  ];
  }

  static List<OnbourdingPageModel> listOnbourdingPageModel(
    BuildContext context,
  ) {
    print("///////////listOnbourdingPageModel//////");
    return [
      OnbourdingPageModel(
        image: AssetsValuesManager.onbourding1,
        title: context.translation.title1onbourding,
        description: context.translation.des1onbourding,
      ),

      OnbourdingPageModel(
        image: AssetsValuesManager.onbourding2,
        title: context.translation.title2onbourding,
        description: context.translation.des2onbourding,
      ),

      OnbourdingPageModel(
        image: AssetsValuesManager.onbourding3,
        title: context.translation.title3onbourding,
        description: context.translation.des3onbourding,
      ),

      OnbourdingPageModel(
        image: AssetsValuesManager.onbourding4,
        title: context.translation.title4onbourding,
        description: context.translation.des4onbourding,
      ),

      OnbourdingPageModel(
        image: AssetsValuesManager.onbourding5,
        title: context.translation.title5onbourding,
        description: context.translation.des5onbourding,
      ),

      OnbourdingPageModel(
        image: AssetsValuesManager.onbourding6,
        title: context.translation.title6onbourding,
        description: context.translation.des6onbourding,
      ),
    ];
  }
}

class TestOnBoardingModel {
  final String title;
  final String subTitle;

  const TestOnBoardingModel({required this.title, required this.subTitle});
}
