import 'package:flutter/material.dart';
import 'package:shopee_x/core/resources/padding_manager.dart';


import '../../../../core/navigation/app_navigation.dart';
import '../../../../core/resources/asset_manager.dart';
import '../../../../core/resources/color_manager.dart';
import '../../../../core/resources/height_manager.dart';
import '../../../../core/resources/route_manager.dart';

class SplachPage extends StatefulWidget {
  const SplachPage({super.key});

  @override
  State<SplachPage> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: PaddingManager.p16,vertical: PaddingManager.p100),
          child: Column(
            children: [
              Image.asset(name)
            ],
          ),
        ),
      ),
    );
  }
}
