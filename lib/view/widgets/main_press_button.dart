import 'package:flutter/material.dart';

import '../../core/resources/color_manager.dart';
import '../../core/resources/font_manager.dart';
import '../../core/resources/height_manager.dart';
import '../../core/resources/padding_manager.dart';
import '../../core/resources/radius_manager.dart';

class MainPressButton extends StatelessWidget {
  const MainPressButton({
    super.key, required this.text, required this.onTap, required this.backGroundColor, required this.textColor,
  });
  final String text;
  final VoidCallback onTap;
  final Color  backGroundColor;
  final Color  textColor;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: double.infinity,
        height: HeightManager.h62,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusValuesManager.r15),
          color: backGroundColor,
            border: Border.all(color: ColorsManager.darkBlack,width: 1.5)
        ),
        child:  Text(
          text,
          style: TextStyle(
              color: textColor,
              fontSize: FontSizeManagers.f16,
              fontWeight: FontWeight.bold
          ),
        ),

      ),
    );
  }
}
