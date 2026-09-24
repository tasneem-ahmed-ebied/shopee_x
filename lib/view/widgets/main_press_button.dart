import 'package:flutter/material.dart';

import '../../core/resources/color_manager.dart';
import '../../core/resources/font_manager.dart';
import '../../core/resources/height_manager.dart';
import '../../core/resources/padding_manager.dart';
import '../../core/resources/radius_manager.dart';

class MainPressButton extends StatelessWidget {
  const MainPressButton({
    super.key, required this.text, required this.onTap, required this.padding,
  });
  final String text;
  final VoidCallback onTap;
  final EdgeInsetsGeometry  padding;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: InkWell(
        onTap: onTap,
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          height: HeightManager.h50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(RadiusValuesManager.r15),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                ColorsManager.primary,
                ColorsManager.blue600,
              ],
            ),
          ),
          child:  Text(
            text,
            style: TextStyle(
                color: ColorsManager.white,
                fontSize: FontSizeManagers.f16,
                fontWeight: FontWeight.bold
            ),
          ),

        ),
      ),
    );
  }
}
