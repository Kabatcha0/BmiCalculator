import 'dart:io';
import 'package:bmi/modules/bmi_desktop/bmi_desktop.dart';
import 'package:bmi/modules/bmi_screen/bmi.dart';
import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
  // if (Platform.isWindows) {
  //   await DesktopWindow.setMinWindowSize(const Size(500, 500));
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) => MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Builder(builder: (context) {
            if (MediaQuery.of(context).size.width <= 700) {
              return Bmi();
            } else {
              /////
              return BmiDesktop();
            }
          })
          // ScreenTypeLayout(
          //   mobile: Bmi(),
          //   desktop: const BmiDesktop(),
          //   breakpoints:
          //       const ScreenBreakpoints(desktop: 500, tablet: 300, watch: 50),
          // ),
          ),
    );
  }
}
