import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:shopee_x/generated/l10n.dart';

import '../core/resources/route_manager.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilPlusInit(
      designSize: (Size(393, 852)),
      child: MaterialApp(
        locale: Locale("ar"),
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
       
      ),
    );
  }
}
