// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Translate {
  Translate();

  static Translate? _current;

  static Translate get current {
    assert(
      _current != null,
      'No instance of Translate was loaded. Try to initialize the Translate delegate before accessing Translate.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Translate> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Translate();
      Translate._current = instance;

      return instance;
    });
  }

  static Translate of(BuildContext context) {
    final instance = Translate.maybeOf(context);
    assert(
      instance != null,
      'No instance of Translate present in the widget tree. Did you add Translate.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static Translate? maybeOf(BuildContext context) {
    return Localizations.of<Translate>(context, Translate);
  }

  /// `next`
  String get next {
    return Intl.message('next', name: 'next', desc: '', args: []);
  }

  /// `skip`
  String get skip {
    return Intl.message('skip', name: 'skip', desc: '', args: []);
  }

  /// `Beautiful eCommerce UI Kit for your online store`
  String get desApp {
    return Intl.message(
      'Beautiful eCommerce UI Kit for your online store',
      name: 'desApp',
      desc: '',
      args: [],
    );
  }

  /// `Let's get started`
  String get startAppTextButton {
    return Intl.message(
      'Let\'s get started',
      name: 'startAppTextButton',
      desc: '',
      args: [],
    );
  }

  /// `I already have an account`
  String get alreadyHaveAccount {
    return Intl.message(
      'I already have an account',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Discover Amazing Products`
  String get title1onbourding {
    return Intl.message(
      'Discover Amazing Products',
      name: 'title1onbourding',
      desc: '',
      args: [],
    );
  }

  /// `Browse thousands of products from top brands. Find exactly what you need at unbeatable prices, all in one place.`
  String get des1onbourding {
    return Intl.message(
      'Browse thousands of products from top brands. Find exactly what you need at unbeatable prices, all in one place.',
      name: 'des1onbourding',
      desc: '',
      args: [],
    );
  }

  /// `Smart Search & Filters`
  String get title2onbourding {
    return Intl.message(
      'Smart Search & Filters',
      name: 'title2onbourding',
      desc: '',
      args: [],
    );
  }

  /// `Find what you love instantly. Filter by category, price, brand, and rating to get perfectly tailored results.`
  String get des2onbourding {
    return Intl.message(
      'Find what you love instantly. Filter by category, price, brand, and rating to get perfectly tailored results.',
      name: 'des2onbourding',
      desc: '',
      args: [],
    );
  }

  /// `Safe & Easy Checkout`
  String get title3onbourding {
    return Intl.message(
      'Safe & Easy Checkout',
      name: 'title3onbourding',
      desc: '',
      args: [],
    );
  }

  /// `Multiple payment options with bank-level security. Shop with complete confidence every single time.`
  String get des3onbourding {
    return Intl.message(
      'Multiple payment options with bank-level security. Shop with complete confidence every single time.',
      name: 'des3onbourding',
      desc: '',
      args: [],
    );
  }

  /// `Fast Delivery to Your Door`
  String get title4onbourding {
    return Intl.message(
      'Fast Delivery to Your Door',
      name: 'title4onbourding',
      desc: '',
      args: [],
    );
  }

  /// `Get your orders delivered in record time. Track every step in real-time, from warehouse to doorstep.`
  String get des4onbourding {
    return Intl.message(
      'Get your orders delivered in record time. Track every step in real-time, from warehouse to doorstep.',
      name: 'des4onbourding',
      desc: '',
      args: [],
    );
  }

  /// `Save Your Favorites`
  String get title5onbourding {
    return Intl.message(
      'Save Your Favorites',
      name: 'title5onbourding',
      desc: '',
      args: [],
    );
  }

  /// `Add products to your wishlist and never lose track of what you love. Get notified instantly when prices drop.`
  String get des5onbourding {
    return Intl.message(
      'Add products to your wishlist and never lose track of what you love. Get notified instantly when prices drop.',
      name: 'des5onbourding',
      desc: '',
      args: [],
    );
  }

  /// `Ready to Start Shopping?`
  String get title6onbourding {
    return Intl.message(
      'Ready to Start Shopping?',
      name: 'title6onbourding',
      desc: '',
      args: [],
    );
  }

  /// `Join millions of happy shoppers today. Create your free account and unlock exclusive deals instantly.`
  String get des6onbourding {
    return Intl.message(
      'Join millions of happy shoppers today. Create your free account and unlock exclusive deals instantly.',
      name: 'des6onbourding',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Translate> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Translate> load(Locale locale) => Translate.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
