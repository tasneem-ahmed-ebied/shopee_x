import 'dart:async';

import 'package:flutter/material.dart';

import '../core/navigation/app_navigation.dart';
import '../core/resources/const_value_manager.dart';
import '../core/resources/route_manager.dart';
import '../model/onbourding_page_model.dart';

class OnbourdingPagesController {
  final BuildContext context;

  late StreamController<int> _streamControllerNextPage;
  late Sink<int> sinkNextPage;
  late Stream<int> streamNextPage;

  late OnbourdingPageModel onbourdingPageModel;

  int index = 0;

  OnbourdingPagesController({
    required this.context,
  }) {
    onbourdingPageModel =
    ConstValueManager.listOnbourdingPageModel(context)[index];
  }

  void nextPage() {
    final pages = ConstValueManager.listOnbourdingPageModel(context);

    if (index < pages.length - 1) {
      index++;

      onbourdingPageModel = pages[index];

      sinkNextPage.add(index);
    } else {
      AppNavigation.pushAndRemoveUntil(
        context,
        RouteName.login,
      );
    }
  }

  void skipPage() {
    AppNavigation.pushAndRemoveUntil(
      context,
      RouteName.login,
    );
  }

  void initStream() {
    _streamControllerNextPage =
    StreamController<int>.broadcast();

    sinkNextPage = _streamControllerNextPage.sink;
    streamNextPage = _streamControllerNextPage.stream;
  }

  void disposeStream() {
    _streamControllerNextPage.close();
  }
}