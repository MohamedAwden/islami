import 'package:flutter/material.dart';
import 'package:islami/pages/hone_screen.dart';
import 'package:islami/utils/theme.dart';

void main() {
  runApp(const ilsamiApp());
}

class ilsamiApp extends StatelessWidget {
  const ilsamiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HoneScreen.routeName : (_) => HoneScreen(),
      },
      initialRoute: HoneScreen.routeName,
      theme: AppTheme.lightTheme  ,
      darkTheme:AppTheme.darkTheme ,
      themeMode: ThemeMode.dark,
    );
  }

}

