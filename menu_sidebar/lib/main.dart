import 'package:flutter/material.dart';
import 'package:menu_sidebar/menu.dart';

// import 'package:syncfusion_localizations/syncfusion_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MaterialApp(
    localizationsDelegates: [
      // ... app-specific localization delegate[s] here
      GlobalMaterialLocalizations.delegate,
      GlobalWidgetsLocalizations.delegate,
      // SfGlobalLocalizations.delegate
    ],
    //ignore: always_specify_types

    supportedLocales: [const Locale('en', 'US'), const Locale('pt', 'BR')],
    home: Menu(),
    debugShowCheckedModeBanner: false,
  ));
}
