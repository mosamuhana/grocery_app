import 'package:flutter/material.dart';

import 'pages.dart';
import 'constants.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //accentColor: AppColors.primaryColor,
        primaryColor: kPrimaryColor,
        fontFamily: kFontFamily,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashPage(),
    );
  }
}
