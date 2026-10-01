import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../controller/onbourding_page_controller.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/const_value_manager.dart';
import '../../../../core/resources/height_manager.dart';
import '../../../../core/resources/radius_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../core/resources/width_manager.dart';
import '../../../../view/widgets/main_press_button.dart';
import '../widget/on_bourding_widgets.dart';

class OnBourdingPage extends StatefulWidget {
  const OnBourdingPage({super.key});

  @override
  State<OnBourdingPage> createState() => _OnbourdingState();
}

class _OnbourdingState extends State<OnBourdingPage> {
  late OnbourdingPagesController _controller;
  late PageController _pageController;
  late StreamSubscription<int> _nextPageSubscription;
  double _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _controller = OnbourdingPagesController(context: context);
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() => _currentPage = _pageController.page ?? 0);
    });
    _controller.initStream();
    _nextPageSubscription = _controller.streamNextPage.listen((index) {
      _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    _nextPageSubscription.cancel();
    _controller.disposeStream();
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    _controller.index = index;
  }

  void _onNextPressed() {
    _controller.nextPage();
  }

  void _onSkipPressed() {
    _controller.skipPage();
  }

  @override
  Widget build(BuildContext context) {
    final int pageCount = ConstValueManager.listOnbourdingPageModel(context).length;
    return Scaffold(
      backgroundColor: ColorsManager.black,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.all(WidthManagers.w5),
          padding: EdgeInsets.symmetric(horizontal: WidthManagers.w10),
          decoration: BoxDecoration(
            color: ColorsManager.white,
            borderRadius: BorderRadius.circular(RadiusValuesManager.r25),
          ),
          child: Column(
            children: [
              SizedBox(height: HeightManager.h35),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: pageCount,
                  onPageChanged: _onPageChanged,
                  itemBuilder: (BuildContext context, int pageIndex) {
                    return OnBourdingPageItem(
                      pageModel:
                          ConstValueManager.listOnbourdingPageModel(context)[pageIndex],
                    );
                  },
                ),
              ),
              OnBourdingDots(dotsCount: pageCount, position: _currentPage),
              SizedBox(height: HeightManager.h22),
              MainPressButton(
                text: _controller.index >= pageCount - 1
                    ? Utils.letsGetStarted
                    : Utils.next,
                onTap: _onNextPressed,
                backGroundColor: ColorsManager.black,
                textColor: ColorsManager.white,
              ),
              SizedBox(height: HeightManager.h8),
              MainPressButton(
                text: Utils.skip,
                onTap: _onSkipPressed,
                backGroundColor: ColorsManager.white,
                textColor: ColorsManager.black,
              ),
              SizedBox(height: HeightManager.h25),
            ],
          ),
        ),
      ),
    );
  }
}