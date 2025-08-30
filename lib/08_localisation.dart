import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class Localisation extends StatefulWidget {
  const Localisation({super.key});

  @override
  State<Localisation> createState() => _LocalisationState();
}

class _LocalisationState extends State<Localisation> {
  // CORRECT APPROACH: State variable declared at class level
  bool isEnglish = true;

  @override
  Widget build(BuildContext context) {
    // WRONG APPROACH: This variable gets reset to true on every rebuild
    // bool isEnglish = true;

    return Scaffold(
      //we call the json file translations by their keys(using "".tr()), which btw has to be the same across however many languages used across the application.
      appBar: AppBar(title: Text("hello".tr())),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //--------Another way to check for the current state other than relying on a defined variable--------
            // final currentLocale = context.locale;
            // if (currentLocale.languageCode == 'en')

            // Using the CORRECT state variable that persists across rebuilds
            if (isEnglish) {
              // we set the language using (context.setLocale(Locale('languageCode')))
              context.setLocale(const Locale('ar'));
            } else {
              context.setLocale(const Locale('en'));
            }
            setState(() {
              isEnglish = !isEnglish;
            });
          },
          child: Text('language'.tr()),
        ),
      ),
    );
  }
}

// WRONG VERSION FOR DEMONSTRATION (UNCOMMENT TO SEE THE BUG)
/*
class WrongLocalisation extends StatefulWidget {
  const WrongLocalisation({super.key});

  @override
  State<WrongLocalisation> createState() => _WrongLocalisationState();
}

class _WrongLocalisationState extends State<WrongLocalisation> {
  @override
  Widget build(BuildContext context) {
    // BUG: Variable reinitialized to true on every rebuild
    bool isEnglish = true;

    return Scaffold(
      appBar: AppBar(title: Text("hello".tr())),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            if (isEnglish) {
              context.setLocale(const Locale('ar'));
            } else {
              context.setLocale(const Locale('en'));
            }
            setState(() {
              isEnglish = !isEnglish; // This change is immediately lost!
            });
          },
          child: Text('language'.tr()),
        ),
      ),
    );
  }
}
*/