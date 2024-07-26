import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'routes/app_pages.dart';
import 'translations/my_translations.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: AppPages.initial,
    defaultTransition: Transition.native,
    translations: MyTranslations(),
    locale: const Locale('pt', 'BR'),
    getPages: AppPages.routes,
  ));
}
