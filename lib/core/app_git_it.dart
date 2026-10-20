// Create a global instance (or use GetIt.instance)
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shopee_x/core/database/shared_preference/app_date_shared_pref.dart';
import 'package:shopee_x/core/translation/app_translation.dart';

final getIt = GetIt.instance;
Future<void> setUpGetIt() async {
 
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<AppDateSharedPref>(
    () => AppDateSharedPref(prefs),
  );
   getIt.registerSingleton(AppTranslation());
}
