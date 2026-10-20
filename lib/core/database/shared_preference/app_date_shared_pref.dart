import 'package:shared_preferences/shared_preferences.dart';

class AppDateSharedPref {
        final SharedPreferences prefs;
        const AppDateSharedPref(this.prefs);

  Future<void> saveValue({required String key, required dynamic value}) async {
    {
      if (value is int) {
        await prefs.setInt(key, value);
      } else if (value is String) {
        await prefs.setString(key, value);
      } else if (value is bool) {
        await prefs.setBool(key, value);
      } else if (value is double) {
        await prefs.setDouble(key, value);
      } else if (value is List<String>) {
        await prefs.setStringList(key, value);
      }
    }
  }
  ////
   Future<dynamic> getValue(String key,) async {
    {
     var vlaue = prefs.get(key);
     if (vlaue is int) {
     return  prefs.getInt( key);
     } else if (vlaue is String) {
       return  prefs.getString(key);
     }else if (vlaue is bool) {
       return  prefs.getBool(key);
     }else if (vlaue is double) {
       return  prefs.getDouble(key);
     }else if (vlaue is List<String>) {
       return  prefs.getStringList(key);
     }else{
       return null;}
     }
     }
    }
  

