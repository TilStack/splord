import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:splord/screens/music_player.dart';
import 'core/theme/theme.dart';
import 'core/theme/theme_constant.dart';

void main() {
  runApp( ChangeNotifierProvider(
    // ChangeNotifierProvider pour la gestion du theme.
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false ,
      theme: Provider.of<ThemeProvider>(context).themeData,
      darkTheme: darkMode,
      themeMode: ThemeMode.system,
      home: MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ThemeProvider(),
        )
      ],
      child:MusicPlayer(),),
      );
  }
}
