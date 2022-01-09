import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:farmanullah_portfolio/binder.dart';
import 'package:farmanullah_portfolio/constants.dart';
import 'package:farmanullah_portfolio/firebase_options.dart';
import 'package:farmanullah_portfolio/pages.dart';
import 'package:farmanullah_portfolio/route_names.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:responsive_framework/utils/scroll_behavior.dart';
// Import the generated file

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        // theme: ThemeData(
        //   // Define the default Brightness and Colors
        //   brightness: Brightness.dark,
        //   primaryColor: Colors.lightBlue[800],
        //   accentColor: Colors.cyan[600],
        // ),

        theme: ThemeData.dark().copyWith(
          brightness: Brightness.dark,

          scaffoldBackgroundColor: Colors.black87,

          textTheme:
              GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(
            bodyColor: Colors.white,
            displayColor: Colors.white,
          ),
          // canvasColor: secondaryColor,
          // appBarTheme:AppBarTheme(backgroundColor:
          // secondaryColor.withGreen(44)

          // )
        ),
        title: "Farman Ullah",
        initialBinding: Binder(),

// getPages: pages,

        builder: (context, widget) => ResponsiveWrapper.builder(
              BouncingScrollWrapper.builder(context, widget!),
              //      maxWidth: 1300,
              minWidth: 450,
              defaultScale: true,
              breakpoints: [
                ResponsiveBreakpoint.resize(450, name: MOBILE),
                ResponsiveBreakpoint.autoScale(800, name: TABLET),
                ResponsiveBreakpoint.autoScale(1000, name: TABLET),
                ResponsiveBreakpoint.resize(1200, name: DESKTOP),
                ResponsiveBreakpoint.autoScale(2460, name: "4K"),
              ],
              // background: Container(color: Color(0xFFF5F5F5))
            ),
        getPages: pages,
        initialRoute: RouteNames.HOME);
  }
}
