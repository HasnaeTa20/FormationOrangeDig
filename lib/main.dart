
import 'package:flutter/material.dart';
import 'package:my_app/Basicpage.dart';
import 'package:my_app/differentWidget.dart';
import 'package:my_app/home.dart';
import 'package:my_app/stateful.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      debugShowCheckedModeBanner:false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 146, 218, 169)),
        useMaterial3: true,
      ),
      home:Home(),
      // DifferentWidget(),
      //  BasicPage()
      // InterractionPage() ,
    );
  }
}


//dart mood
// theme: ThemeData(
//          brightness: Brightness.light,
//         /* light theme settings */
//       ),
//       darkTheme: ThemeData(
//         brightness: Brightness.dark,
//         /* dark theme settings */
//       ),
//       themeMode: ThemeMode.dark, 