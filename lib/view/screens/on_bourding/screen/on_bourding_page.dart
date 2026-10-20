import 'dart:async';

import 'package:flutter/material.dart';

import '../../../../controller/onbourding_page_controller.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/const_value_manager.dart';
import '../../../../core/resources/context_extensions.dart';
import '../../../../core/resources/height_manager.dart';
import '../../../../core/resources/radius_manager.dart';
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
 late StreamController<int> pipe;
  late Sink<int> input;
  late Stream<int> output;

void  init() {
    pipe = StreamController<int>();
    input = pipe.sink;
    output = pipe.stream;
  }

  void chanageNumber() {
    input.add(1);
  }
  @override
  void initState() {
    super.initState();
    init();
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

  late final listOnboarding = ConstValueManager.listOnbourdingPageModel(
    context,
  );
  late final int pageCount = listOnboarding.length;

  @override
  Widget build(BuildContext context) {
    print("============build===========");
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
                      pageModel: ConstValueManager.listOnbourdingPageModel(
                        context,
                      )[pageIndex],
                    );
                  },
                ),
              ),
              OnBourdingDots(dotsCount: pageCount, position: _currentPage),
              SizedBox(height: HeightManager.h22),
              MainPressButton(
                text: _controller.index >= pageCount - 1
                    ? context.translation.startAppTextButton
                    : context.translation.next,
                onTap: _onNextPressed,
                backGroundColor: ColorsManager.black,
                textColor: ColorsManager.white,
              ),
              ElevatedButton(
                onPressed: () {
                 chanageNumber();
                },
                child: StreamBuilder(
                  stream: output,
                  builder: (context, snapchot) {
                    return Text("${snapchot.data}");
                  }
                ),
              ),
              SizedBox(height: HeightManager.h8),
              MainPressButton(
                text: context.translation.skip,
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
 
 //onboarding with translation
 //switch (intl + sharedpref)
 //extensions
 //variable with localiation
 //use in switch lang => stream builder
 