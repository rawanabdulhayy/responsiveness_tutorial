import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:responsiveness_tutorial/08_localisation.dart';
void main() async {
  // Ensure Flutter framework is fully initialized before executing plugin code
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize EasyLocalization plugin and load translation assets
  await EasyLocalization.ensureInitialized();

  runApp(
    // Wrap application with EasyLocalization to enable localization capabilities
    EasyLocalization(
      // Supported application locales (English and Arabic)
      supportedLocales: [const Locale('en'), const Locale('ar')],
      // Path to directory containing translation JSON files
      path: 'assets/translations',
      // Default locale to use when device locale is not supported
      fallbackLocale: const Locale('en'),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // Set current locale based on user selection from UI
      locale: context.locale,
      // Declare all supported locales for the application
      supportedLocales: context.supportedLocales,
      // Provide localization delegates for built-in and custom translations
      localizationsDelegates: context.localizationDelegates,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Localisation(),
    );
  }
}