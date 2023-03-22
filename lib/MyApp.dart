import 'package:datatransfer/DoctorPageModule.dart';
import 'package:flutter/material.dart';
import 'DoctorHomePage.dart';
class MyApp extends StatelessWidget {
  MyApp({super.key});
  DoctorPageModule _doctorPageModule = DoctorPageModule();
  @override
  Widget build(BuildContext context) {
    return (
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          brightness: Brightness.light,
          colorSchemeSeed: Color(0xff05D1ED)
        ),
        darkTheme: ThemeData(
          brightness: Brightness.dark,
          colorSchemeSeed: Color(0xff0D031B)
        ),
        themeMode: ThemeMode.system,
        home:DoctorHomePage(),
      )
    );
  }
}
