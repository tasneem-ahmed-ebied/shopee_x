import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopee_x/core/resources/font_manager.dart';
import 'package:shopee_x/core/resources/padding_manager.dart';
import 'package:shopee_x/core/resources/radius_manager.dart';
import 'package:shopee_x/core/resources/width_manager.dart';
import 'package:shopee_x/view/widgets/main_press_button.dart';

import '../../../../core/navigation/app_navigation.dart';
import '../../../../core/resources/asset_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/height_manager.dart';
import '../../../../core/resources/route_manager.dart';
import '../../../../core/resources/utils.dart';
import '../../../../generated/l10n.dart';

class SplachPage extends StatelessWidget {
  const SplachPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: PaddingManager.p16,
            vertical: PaddingManager.p80,
          ),
          child: Center(
            child: Column(
              children: [
                Image.asset(
                  AssetsValuesManager.logo,
                  height: HeightManager.h175,
                ),
                SizedBox(height: HeightManager.h30),
                Text(Utils.beautifulECommerceUiKit,style: TextStyle(color: ColorsManager.semiDart,fontSize: FontSizeManagers.f15,fontWeight: FontWeight.w200),),
                SizedBox(height: HeightManager.h175),
                MainPressButton(
                  text: Utils.letsGetStarted,
                  onTap: () {
                    AppNavigation.pushReplacementNamed(
                      context,
                      RouteName.onbourding,
                    );
                  },
                  backGroundColor: ColorsManager.darkBlack,
                  textColor: ColorsManager.white,
                ),
                SizedBox(height: HeightManager.h25),
                MainPressButton(
                  //todo add it to Utils
                  text: Translate.of(context).next,
                  onTap: () {
                    AppNavigation.pushReplacementNamed(
                      context,
                      RouteName.login,
                    );
                  },
                  backGroundColor: ColorsManager.white,
                  textColor: ColorsManager.darkBlack,
                ),
                SizedBox(height: HeightManager.h25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                   //todo add it to Utils

                  children: [
                    Text(Translate.of(context).alreadyHaveAccount,style: TextStyle(color: ColorsManager.semiDart,fontSize: FontSizeManagers.f15,fontWeight: FontWeight.w200),),
                    SizedBox(width: WidthManagers.w10,),
                    Container(
                      alignment: Alignment.center,
                      width: WidthManagers.w30,
                      height: HeightManager.h30,
                      decoration: BoxDecoration(
                        color: ColorsManager.blue,
                        borderRadius: BorderRadius.circular(RadiusValuesManager.r50)
                      ),
                      child:InkWell(
                          onTap: () {
                            AppNavigation.pushReplacementNamed(context, RouteName.login);
                          },
                          child: Icon(CupertinoIcons.right_chevron,color: ColorsManager.white,size: 15,)) ,
                    )
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
