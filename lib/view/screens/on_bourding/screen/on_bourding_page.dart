import 'package:flutter/material.dart';

import '../../../../controller/onbourding_page_controller.dart';
import '../../../../core/navigation/app_navigation.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/const_value_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/height_manager.dart';
import '../../../../core/resources/radius_manager.dart';
import '../../../../core/resources/route_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../core/resources/width_manager.dart';
import '../../../widgets/main_press_button.dart';


class OnBourdingPage extends StatefulWidget {
  const OnBourdingPage({super.key});

  @override
  State<OnBourdingPage> createState() => _OnbourdingState();
}

class _OnbourdingState extends State<OnBourdingPage> {
  late OnbourdingPagesController _controller;
  late PageController _pageController;

  @override
  void initState() {
    super.initState();
    _controller = OnbourdingPagesController(context: context);
    _pageController = PageController();
    _controller.initStream();
  }

  @override
  void dispose() {
    _controller.disposeStream();
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) {
    _controller.index = index;
    _controller.sinkNextPage.add(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MainPressButton(text: Utils.next, onTap: () {
        if (_controller.index < ConstValueManager.listOnbourdingPageModel.length - 1) {
          _pageController.nextPage(
            duration: const Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        } else {
          AppNavigation.pushAndRemoveUntil(context, RouteName.login);
        }
      }, padding: EdgeInsets.symmetric(horizontal: PaddingManager.p20,vertical: PaddingManager.p100), ),
      body: StreamBuilder(
          stream: _controller.streamNextPage,
          initialData: _controller.index,
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            return PageView.builder(
                controller: _pageController,
                itemCount: ConstValueManager.listOnbourdingPageModel.length,
                onPageChanged: _onPageChanged,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int pageIndex) {
                  final pageModel = ConstValueManager.listOnbourdingPageModel[pageIndex];

                  return Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: HorizontalPaddingManager.p20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: HeightManager.h55,),
                        Container(
                          width: WidthManagers.w165,
                          height: HeightManager.h165,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(RadiusValuesManager
                                  .r400),
                              gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    ColorsManager.primary,
                                    ColorsManager.blue400,

                                  ])
                          ),
                          child: Icon(pageModel.image,color: ColorsManager.white,size: FontSizeManagers.f100,),
                        ),
                        SizedBox(height: HeightManager.h73,),
                        Text(
                          pageModel.title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: FontSizeManagers.f20,
                              fontWeight: FontWeight.bold,
                              color: ColorsManager.black,
                              fontFamily: FontsManagers.poppins
                          ),
                        ),
                        SizedBox(height: HeightManager.h10),
                        Text(
                          textAlign: TextAlign.center,
                          pageModel.description,
                          style: TextStyle(
                              fontSize: FontSizeManagers.f15,
                              color: ColorsManager.grey,
                              fontFamily: FontsManagers.roboto

                          ),
                        ),
                      ],
                    ),
                  );
                });
          }),
    );
  }
}
