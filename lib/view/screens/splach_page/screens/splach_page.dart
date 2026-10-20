import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopee_x/app/my_app.dart';
import 'package:shopee_x/core/app_git_it.dart';
import 'package:shopee_x/core/resources/font_manager.dart';
import 'package:shopee_x/core/resources/padding_manager.dart';
import 'package:shopee_x/core/resources/radius_manager.dart';
import 'package:shopee_x/core/resources/width_manager.dart';
import 'package:shopee_x/view/widgets/main_press_button.dart';

import '../../../../core/navigation/app_navigation.dart';
import '../../../../core/resources/asset_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/context_extensions.dart';
import '../../../../core/resources/height_manager.dart';
import '../../../../core/resources/route_manager.dart';

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
            vertical: PaddingManager.p60,
          ),
          child: Center(
            child: Column(
              children: [
                /////////////////////
              
            
                /////////////////////////////////////////////////////////////////////////////////////////
                Image.asset(
                  AssetsValuesManager.logo,
                  height: HeightManager.h165,
                ),
                SizedBox(height: HeightManager.h20),
                Text(
                  context.translation.desApp,
                  style: TextStyle(
                    color: ColorsManager.semiDart,
                    fontSize: FontSizeManagers.f15,
                    fontWeight: FontWeight.w200,
                  ),
                ),
                SizedBox(height: HeightManager.h145),
                /////////////////////////////////////////////////////////////////////////
                MainPressButton(
                  text: context.translation.startAppTextButton,
                  onTap: () {
                    AppNavigation.pushNamed(
                      context,
                      RouteName.onbourding,
                    );
                  },
                  backGroundColor: ColorsManager.darkBlack,
                  textColor: ColorsManager.white,
                ),
                SizedBox(height: HeightManager.h25),
                MainPressButton(
                  text: context.translation.next,
                  onTap: () {
                    AppNavigation.pushReplacementNamed(
                      context,
                      RouteName.login,
                    );
                  },
                  backGroundColor: ColorsManager.white,
                  textColor: ColorsManager.darkBlack,
                ),
                //////////////////////////////////////////////////
                SizedBox(height: HeightManager.h10),
                  Row(
                children : [
                    ElevatedButton.icon(
                  onPressed: () {
                    getIt.changeLocale("en");
                  },
                  icon: const Icon(
                    Icons.language,
                    size: 20,
                  ),
                  label: const Text(
                    'En',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    elevation: 3,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    getIt.changeLocale("ar");
                  },
                  icon: const Icon(
                    Icons.language,
                    size: 20,
                  ),
                  label: const Text(
                    'ar',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    elevation: 3,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                  ),
                ),

                ],
              ),////////////////////////
                SizedBox(height: HeightManager.h25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      context.translation.alreadyHaveAccount,
                      style: TextStyle(
                        color: ColorsManager.semiDart,
                        fontSize: FontSizeManagers.f15,
                        fontWeight: FontWeight.w200,
                      ),
                    ),
                    SizedBox(width: WidthManagers.w10),
                    Container(
                      alignment: Alignment.center,
                      width: WidthManagers.w30,
                      height: HeightManager.h30,
                      decoration: BoxDecoration(
                        color: ColorsManager.blue,
                        borderRadius: BorderRadius.circular(
                          RadiusValuesManager.r50,
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          AppNavigation.pushReplacementNamed(
                            context,
                            RouteName.login,
                          );
                        },
                        child: Icon(
                          CupertinoIcons.right_chevron,
                          color: ColorsManager.white,
                          size: 15,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
