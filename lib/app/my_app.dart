import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:get_it/get_it.dart';
import 'package:shopee_x/core/app_git_it.dart';
import 'package:shopee_x/generated/l10n.dart';

import '../core/resources/route_manager.dart';
import '../core/translation/app_translation.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: (Size(393, 852)),
      child: StreamBuilder(
        stream: getIt.outputLang,
        builder: (context, snapshot) {
          return MaterialApp(
            locale: Locale(snapshot.data ?? "en"),
             localizationsDelegates: [
                    Translate.delegate,
                    GlobalMaterialLocalizations.delegate,
                    GlobalWidgetsLocalizations.delegate,
                    GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: Translate.delegate.supportedLocales,
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RoutesManager.onGenerateRoute,
            initialRoute: RouteName.splach.routeName,
           
          );
        }
      ),
    );
  }
}
//todo transphere to git_it extension





extension GetitExtension on GetIt{
  AppTranslation get translation => getIt<AppTranslation>();
   Stream<String> get outputLang => translation.outputLang;
   void changeLocale(String lang) => translation.changeLocale(lang);
}
