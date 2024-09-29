import 'package:flutter/material.dart';
import 'package:pmsn2024b/screens/home_screen.dart';
import 'package:pmsn2024b/screens/login_screen.dart';
import 'package:pmsn2024b/screens/movies_screen.dart';
import 'package:pmsn2024b/screens/profile_screen.dart';
import 'package:pmsn2024b/settings/global_values.dart';
import 'package:pmsn2024b/settings/theme_settings.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ValueListenableBuilder(
      valueListenable: GlobalValues.banThemeDark,
      builder: (context, value, widget) {
        return MaterialApp(
          title: 'Material App',
          debugShowCheckedModeBanner: false,
          home: const LoginScreen(),
          theme: value 
            ? ThemeSettings.darkTheme() 
            : ThemeSettings.ligthTheme(),
          routes: {
            "/home" : (context) => const HomeScreen(),
            "/db" : (context) => const MoviesScreen(),
            "profile" : (context) => const ProfileScreen()
          },
        );
      }
    );
  }
}