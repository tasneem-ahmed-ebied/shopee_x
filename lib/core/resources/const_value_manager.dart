import 'package:flutter/material.dart';
import 'package:shopee_x/generated/l10n.dart';

import '../../model/onbourding_page_model.dart';
import 'asset_manager.dart';

class ConstValueManager {
  static List<OnbourdingPageModel> listOnbourdingPageModel(
    BuildContext context,
  ) {
    return [
      OnbourdingPageModel(
        image: AssetsValuesManager.onbourding1,
        title: Translate.of(context).title1onbourding,
        description: Translate.of(context).des1onbourding,
      ),

      OnbourdingPageModel(
        image: AssetsValuesManager.onbourding2,
        title: Translate.of(context).title2onbourding,
        description: Translate.of(context).des2onbourding,
      ),

      OnbourdingPageModel(
        image: AssetsValuesManager.onbourding3,
        title: Translate.of(context).title3onbourding,
        description: Translate.of(context).des3onbourding,
      ),

      OnbourdingPageModel(
        image: AssetsValuesManager.onbourding4,
        title: Translate.of(context).title4onbourding,
        description: Translate.of(context).des4onbourding,
      ),

      OnbourdingPageModel(
        image: AssetsValuesManager.onbourding5,
        title: Translate.of(context).title5onbourding,
        description: Translate.of(context).des5onbourding,
      ),

      OnbourdingPageModel(
        image: AssetsValuesManager.onbourding6,
        title: Translate.of(context).title6onbourding,
        description: Translate.of(context).des6onbourding,
      ),
    ];
  }
}