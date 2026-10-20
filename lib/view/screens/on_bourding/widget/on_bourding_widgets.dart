import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/font_manager.dart';
import '../../../../core/resources/height_manager.dart';
import '../../../../core/resources/width_manager.dart';
import '../../../../model/onbourding_page_model.dart';

class OnBourdingPageItem extends StatelessWidget {
  const OnBourdingPageItem({super.key, required this.pageModel});

  final OnbourdingPageModel pageModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: HeightManager.h255,
          width: double.infinity,
          child: Image.asset(
            pageModel.image,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(height: HeightManager.h25),
        Text(
          pageModel.title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: FontSizeManagers.f20,
            fontWeight: FontWeight.w800,
            color: ColorsManager.black,
            height: 1.05,
          ),
        ),
        SizedBox(height: HeightManager.h25),
        Text(
          pageModel.description,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: FontSizeManagers.f11,
            color: ColorsManager.grey,
            height: 1.5,
          ),
        ),
      ],
    );
  }
}

class OnBourdingDots extends StatelessWidget {
  const OnBourdingDots({
    super.key,
    required this.dotsCount,
    required this.position,
  });

  final int dotsCount;
  final double position;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      dotsCount: dotsCount,
      position: position,
      decorator: DotsDecorator(
        activeColor: ColorsManager.black,
        color: ColorsManager.storeLogoBlue,
        activeSize: Size(
          WidthManagers.w9,
          HeightManager.h9,
        ),
        size: Size(
          WidthManagers.w6,
          HeightManager.h6,
        ),
      ),
    );
  }
}

