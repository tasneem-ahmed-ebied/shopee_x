import 'package:flutter/material.dart';
import 'package:shopee_x/core/app_git_it.dart';

import 'app/my_app.dart';

void main()async {
WidgetsFlutterBinding.ensureInitialized();
  await setUpGetIt();
  runApp(const MyApp());
}
