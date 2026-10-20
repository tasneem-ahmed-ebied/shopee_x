import 'dart:async';
 
import 'package:flutter/material.dart';
import 'package:shopee_x/core/app_git_it.dart';
import 'package:shopee_x/core/extensions/get_it_extension.dart';
import 'package:shopee_x/core/resources/context_extensions.dart';

class AppTranslation {
  late StreamController<String> _localController;
  late Stream<String> outputLang;
  late Sink<String> input;

  AppTranslation() {
   _init();
  }
  void _init()async {
     _localController = StreamController<String>();
    outputLang = _localController.stream;
    input = _localController.sink;
    String? lang =await  getLang();
    print("lang is $lang");
    input.add(lang ?? "en");
    // number of room : 5
    // رقم الغرفه : 6 
 
  }

  Future<void> changeLocale(String lang) async {
    input.add(lang);
    await getIt.saveValueInSharedPref(key: "lang", value: lang);
  }

  Future<String?> getLang() async {
  return  await getIt.getValueSharedPref(key: "lang");
  }
}
