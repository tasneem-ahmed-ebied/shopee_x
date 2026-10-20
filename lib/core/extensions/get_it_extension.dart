import 'package:get_it/get_it.dart';
import 'package:shopee_x/core/database/shared_preference/app_date_shared_pref.dart';

extension GetitExtension on GetIt {
  Future<void> saveValueInSharedPref({
    required String key,
    required dynamic value,
  }) async {
    {
      this<AppDateSharedPref>().saveValue(key: key, value: value);
    }

  }
  Future<dynamic> getValueSharedPref({required String key}) {
      return this<AppDateSharedPref>().getValue(key);
    }

    
}
