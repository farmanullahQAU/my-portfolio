import 'package:farmanullah_portfolio/binder.dart';
import 'package:farmanullah_portfolio/firebase_options.dart';
import 'package:farmanullah_portfolio/pages.dart';
import 'package:farmanullah_portfolio/route_names.dart';
import 'package:farmanullah_portfolio/app_theme.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
// Import the generated file

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
  themeMode: ThemeMode.system,

     darkTheme: ThemeData.dark(),
      theme: AppTheme.blueTheme,

        title: "Farman Ullah",
        initialBinding: Binder(),

// getPages: pages,
// builder: (context, child) => ResponsiveWrapper.builder(
//           child,
//           maxWidth: 1200,
//           minWidth: 480,
//           defaultScale: true,
//           breakpoints: [
//             ResponsiveBreakpoint.resize(480, name: MOBILE),
//             ResponsiveBreakpoint.autoScale(800, name: TABLET),
//             ResponsiveBreakpoint.resize(1000, name: DESKTOP),
//           ],
//           background: Container(color: Color(0xFFF5F5F5))),
        builder: (context, widget) => ResponsiveWrapper.builder(
              widget,
              //      maxWidth: 1300,
              minWidth: 450,
              defaultScale: true,
              breakpoints: [
                const ResponsiveBreakpoint.resize(450, name: MOBILE),
                const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                const ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                const ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
              ],
              // background: Container(color: Color(0xFFF5F5F5))
            ),
        getPages: pages,
        initialRoute: RouteNames.HOME);
  }
}
