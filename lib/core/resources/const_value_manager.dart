import 'package:flutter/material.dart';


import '../../model/onbourding_page_model.dart';
import '../../model/store_category_model.dart';
import '../../model/store_product_model.dart';

class ConstValueManager {
  static List<OnbourdingPageModel> listOnbourdingPageModel = [
    OnbourdingPageModel(
      image: Icons.devices,
      title: Utils.titleOnbourding1,
      description: Utils.descriptionOnbourding1,
    ),
    OnbourdingPageModel(
      image: Icons.handshake,
      title: Utils.titleOnbourding2,
      description: Utils.descriptionOnbourding2,
    ),
    OnbourdingPageModel(
      image: Icons.energy_savings_leaf,
      title: Utils.titleOnbourding3,
      description: Utils.descriptionOnbourding3,
    ),
  ];


}