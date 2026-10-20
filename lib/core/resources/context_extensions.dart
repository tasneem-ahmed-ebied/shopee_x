import 'package:flutter/widgets.dart';
import 'package:shopee_x/generated/l10n.dart';

extension ContextExtensions on BuildContext {
  Translate get translation => Translate.of(this);
}